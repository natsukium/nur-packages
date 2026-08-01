// Emacs Client.app: a thin Launch Services front-end for emacsclient.
//
// Upstream emacs-plus compiles this bundle from AppleScript with osacompile,
// but /usr/bin/osacompile is unreachable from the Nix build sandbox, so the
// same three entry points are implemented as a minimal Cocoa application:
// opening files from Finder or drag-and-drop, handling org-protocol:// URLs,
// and a bare launch from the Dock or Spotlight.
//
// EMACSCLIENT is defined at build time with the absolute store path.

#import <AppKit/AppKit.h>

@interface EmacsClientDelegate : NSObject <NSApplicationDelegate>
@end

@implementation EmacsClientDelegate {
  BOOL _handledOpenRequest;
}

- (void)runEmacsclientWithArguments:(NSArray<NSString *> *)arguments {
  NSTask *task = [[NSTask alloc] init];
  task.executableURL = [NSURL fileURLWithPath:@EMACSCLIENT];
  task.arguments = arguments;

  NSError *error = nil;
  if (![task launchAndReturnError:&error]) {
    NSLog(@"Emacs Client: cannot run %s: %@", EMACSCLIENT, error);
    return;
  }

  // Wait even though emacsclient was given -n: with "-a ''" it may have to
  // start a daemon first, and raising Emacs before the frame exists would
  // activate nothing.
  [task waitUntilExit];
}

- (void)raiseEmacs {
  for (NSRunningApplication *app in NSWorkspace.sharedWorkspace.runningApplications) {
    // Frames served by "emacs --daemon" belong to an unbundled process, so
    // matching on the bundle identifier alone would miss the common case.
    BOOL isEmacs = [app.bundleIdentifier isEqualToString:@"org.gnu.Emacs"] ||
                   [app.localizedName caseInsensitiveCompare:@"Emacs"] == NSOrderedSame;
    if (isEmacs) {
      [app activateWithOptions:NSApplicationActivateAllWindows];
      return;
    }
  }
}

- (void)application:(NSApplication *)application openURLs:(NSArray<NSURL *> *)urls {
  _handledOpenRequest = YES;

  for (NSURL *url in urls) {
    if (url.isFileURL) {
      [self runEmacsclientWithArguments:@[ @"-c", @"-a", @"", @"-n", url.path ]];
    } else {
      // org-protocol URLs are routed to an existing frame rather than a new
      // one; org-capture and friends manage their own window layout.
      [self runEmacsclientWithArguments:@[ @"-n", url.absoluteString ]];
    }
  }

  [self raiseEmacs];
}

- (void)applicationDidFinishLaunching:(NSNotification *)notification {
  // Launch Services delivers open requests while the application is finishing
  // its launch, so wait a moment before concluding that this was a bare launch
  // from the Dock or Spotlight.
  dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.2 * NSEC_PER_SEC)),
                 dispatch_get_main_queue(), ^{
                   if (!self->_handledOpenRequest) {
                     [self runEmacsclientWithArguments:@[ @"-c", @"-a", @"", @"-n" ]];
                     [self raiseEmacs];
                   }
                   [NSApp terminate:nil];
                 });
}

@end

// NSApplication holds its delegate weakly, so keep it alive at file scope.
static EmacsClientDelegate *delegate;

int main(int argc, const char *argv[]) {
  @autoreleasepool {
    NSApplication *application = NSApplication.sharedApplication;
    delegate = [[EmacsClientDelegate alloc] init];
    application.delegate = delegate;
    [application run];
  }
  return 0;
}
