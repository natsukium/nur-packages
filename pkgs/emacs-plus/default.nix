{
  lib,
  source,
  emacs,
  writeText,
}:

emacs.overrideAttrs (
  finalAttrs: prevAttrs:
  let
    emacsMajorVersion = lib.versions.major prevAttrs.version;
    emacsOlder = lib.versionOlder prevAttrs.version;
    emacsAtLeast = lib.versionAtLeast prevAttrs.version;

    # Emacs Client.app is shipped by upstream from emacs 30 onwards
    withClientApp = emacsAtLeast "30";

    clientInfoPlist = writeText "emacs-client-Info.plist" (
      lib.generators.toPlist { escape = true; } {
        CFBundleDevelopmentRegion = "English";
        CFBundleExecutable = "EmacsClient";
        CFBundleIconFile = "Emacs.icns";
        CFBundleIdentifier = "org.gnu.EmacsClient";
        CFBundleInfoDictionaryVersion = "6.0";
        CFBundleName = "Emacs Client";
        CFBundleDisplayName = "Emacs Client";
        CFBundleGetInfoString = "Emacs Client ${prevAttrs.version}";
        CFBundlePackageType = "APPL";
        CFBundleSignature = "????";
        CFBundleShortVersionString = prevAttrs.version;
        CFBundleVersion = prevAttrs.version;
        LSApplicationCategoryType = "public.app-category.productivity";
        NSHighResolutionCapable = true;
        # upstream stamps the current year here, which would make the build
        # depend on the clock
        NSHumanReadableCopyright = "Copyright (C) Free Software Foundation, Inc.";
        CFBundleDocumentTypes = [
          {
            CFBundleTypeRole = "Editor";
            CFBundleTypeName = "Text Document";
            LSItemContentTypes = [
              "public.text"
              "public.plain-text"
              "public.source-code"
              "public.script"
              "public.shell-script"
              "public.data"
            ];
          }
        ];
        CFBundleURLTypes = [
          {
            CFBundleURLName = "Org Protocol";
            CFBundleURLSchemes = [ "org-protocol" ];
          }
        ];
      }
    );
  in
  {
    pname = "emacs-plus";
    name = "${finalAttrs.pname}-${prevAttrs.version}";

    patches =
      (prevAttrs.patches or [ ])
      ++ map (p: "${source.src}/patches/emacs-${emacsMajorVersion}/${p}") (
        [
          "round-undecorated-frame.patch"
          "system-appearance.patch"
        ]
        ++ lib.optional (emacsOlder "30") "no-frame-refocus-cocoa.patch"
        # upstream emacs 31 no longer needs the window role workaround
        ++ lib.optional (emacsOlder "31") "fix-window-role.patch"
        # x-colors is dumped in a headless builder and ends up with a truncated
        # color list, so refresh it when the display becomes available
        ++ lib.optional (emacsAtLeast "30") "fix-ns-x-colors.patch"
        # macOS 26 (Tahoe) scrolling lag; merged upstream into emacs 31
        ++ lib.optional (emacsAtLeast "30" && emacsOlder "31") "fix-macos-tahoe-scrolling.patch"
      );

    configureFlags = (prevAttrs.configureFlags or [ ]) ++ [
      (lib.withFeatureAs true "xml2" "yes")
      (lib.withFeatureAs true "gnutls" "yes")
    ];

    postInstall =
      (prevAttrs.postInstall or "")
      + lib.optionalString withClientApp ''
        # Emacs.app is absent unless the NS port was built
        if [ -d "$out/Applications/Emacs.app" ]; then
          clientApp="$out/Applications/Emacs Client.app"
          mkdir -p "$clientApp/Contents/MacOS" "$clientApp/Contents/Resources"

          $CC -O2 -Wall -fobjc-arc -framework AppKit \
            -DEMACSCLIENT="\"$out/bin/emacsclient\"" \
            -o "$clientApp/Contents/MacOS/EmacsClient" \
            ${./emacs-client.m}

          cp "$out/Applications/Emacs.app/Contents/Resources/Emacs.icns" \
            "$clientApp/Contents/Resources/Emacs.icns"
          cp ${clientInfoPlist} "$clientApp/Contents/Info.plist"
          printf 'APPL????' > "$clientApp/Contents/PkgInfo"
        fi
      '';

    meta = prevAttrs.meta // {
      description = "A wide range of extra functionality over regular Emacs for macOS";
      homepage = "https://github.com/d12frosted/homebrew-emacs-plus";
      platforms = lib.platforms.darwin;
      # fail to patch on emacs28
      broken = emacsOlder "29";
    };
  }
)
