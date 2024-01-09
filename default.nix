# This file describes your repository contents.
# It should return a set of nix derivations
# and optionally the special attributes `lib`, `modules` and `overlays`.
# It should NOT import <nixpkgs>. Instead, you should take pkgs as an argument.
# Having pkgs default to <nixpkgs> is fine though, and it lets you use short
# commands such as:
#     nix-build -A mypackage

{ pkgs ? import <nixpkgs> { } }:

rec {
  # The `lib`, `modules`, and `overlay` names are special
  lib = import ./lib { inherit pkgs; }; # functions
  modules = import ./modules; # NixOS modules
  overlays = import ./overlays; # nixpkgs overlays

  colima = pkgs.callPackage ./pkgs/colima { };
  copyq = pkgs.callPackage ./pkgs/copyq { };
  ligaturizer = pkgs.callPackage ./pkgs/ligaturizer { };
  nixfmt = pkgs.callPackage ./pkgs/nixfmt { };
  nixpkgs-review = pkgs.callPackage ./pkgs/nixpkgs-review { };
  nowplaying-cli = pkgs.callPackage ./pkgs/nowplaying-cli { 
    inherit (pkgs.darwin.apple_sdk.frameworks) Cocoa;
  };
  psipred = pkgs.callPackage ./pkgs/psipred { };
  qutebrowser = pkgs.callPackage ./pkgs/qutebrowser { };
  rofi-rbw = pkgs.callPackage ./pkgs/rofi-rbw { };
  liga-hackgen-font = pkgs.callPackage ./pkgs/data/fonts/liga-hackgen { 
    inherit ligaturizer; 
  };
  liga-hackgen-nf-font = liga-hackgen-font.override { 
    nerdfont = true; 
  };

  vimPlugins = pkgs.recurseIntoAttrs (pkgs.callPackage ./pkgs/vim-plugins { inherit (pkgs.vimUtils) buildVimPlugin; });
}
