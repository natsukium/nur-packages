# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  copyq-darwin = {
    pname = "copyq-darwin";
    version = "9.1.0";
    src = fetchurl {
      url = "https://github.com/hluk/CopyQ/releases/download/v9.1.0/CopyQ-macos-12-m1.dmg.zip";
      sha256 = "sha256-Vncfe+W+wEqOO4wBzrsBI/J/4N3bqmJKNfX0eT6JOvg=";
    };
  };
  emacs-plus = {
    pname = "emacs-plus";
    version = "5f1f625f43d498dcb9a931e0f351bfdaeb41cd1b";
    src = fetchFromGitHub {
      owner = "d12frosted";
      repo = "homebrew-emacs-plus";
      rev = "5f1f625f43d498dcb9a931e0f351bfdaeb41cd1b";
      fetchSubmodules = false;
      sha256 = "sha256-0awwiJjYGvwzqghzjgQiE6rRyv//I68l2ivwdstbBfU=";
    };
    date = "2024-12-22";
  };
  hammerspoon = {
    pname = "hammerspoon";
    version = "1.0.0";
    src = fetchurl {
      url = "https://github.com/Hammerspoon/hammerspoon/releases/download/1.0.0/Hammerspoon-1.0.0.zip";
      sha256 = "sha256-XbcCtV2kfcMG6PWUjZHvhb69MV3fopQoMioK9+1+an4=";
    };
  };
  nixpkgs-review = {
    pname = "nixpkgs-review";
    version = "b4d0a817180b1a079d00d41c0a41308cb11407f7";
    src = fetchFromGitHub {
      owner = "natsukium";
      repo = "nixpkgs-review";
      rev = "b4d0a817180b1a079d00d41c0a41308cb11407f7";
      fetchSubmodules = false;
      sha256 = "sha256-fZkXkhwsNoxcQcC4fqwnkfGherazl/YZBkuVWGmnWPY=";
    };
    date = "2025-01-10";
  };
  paperwm-spoon = {
    pname = "paperwm-spoon";
    version = "41389206e739e6f48ea59ddcfc07254226f4c93f";
    src = fetchFromGitHub {
      owner = "mogenson";
      repo = "PaperWM.spoon";
      rev = "41389206e739e6f48ea59ddcfc07254226f4c93f";
      fetchSubmodules = false;
      sha256 = "sha256-O1Pis5udvh3PUYJmO+R2Aw11/udxk3v5hf2U9SzbeqI=";
    };
    date = "2025-02-01";
  };
  qmk-toolbox = {
    pname = "qmk-toolbox";
    version = "0.3.3";
    src = fetchurl {
      url = "https://github.com/qmk/qmk_toolbox/releases/download/0.3.3/QMK.Toolbox.app.zip";
      sha256 = "sha256-WPre2csGAQzavtksLbj3L/MrWUT6d2gTJVq7eAmpcLk=";
    };
  };
  qutebrowser-darwin = {
    pname = "qutebrowser-darwin";
    version = "3.4.0";
    src = fetchurl {
      url = "https://github.com/qutebrowser/qutebrowser/releases/download/v3.4.0/qutebrowser-3.4.0-arm64.dmg";
      sha256 = "sha256-H5u8q/wjwlx5pw/S14wVe2+TExioD6PgcZZhdXobXqE=";
    };
  };
  sbarlua = {
    pname = "sbarlua";
    version = "437bd2031da38ccda75827cb7548e7baa4aa9978";
    src = fetchFromGitHub {
      owner = "FelixKratz";
      repo = "SbarLua";
      rev = "437bd2031da38ccda75827cb7548e7baa4aa9978";
      fetchSubmodules = false;
      sha256 = "sha256-F0UfNxHM389GhiPQ6/GFbeKQq5EvpiqQdvyf7ygzkPg=";
    };
    date = "2024-08-12";
  };
  skkeleton = {
    pname = "skkeleton";
    version = "8bb1b8782227291c8cbe2aa62a9af732557690cc";
    src = fetchFromGitHub {
      owner = "vim-skk";
      repo = "skkeleton";
      rev = "8bb1b8782227291c8cbe2aa62a9af732557690cc";
      fetchSubmodules = false;
      sha256 = "sha256-V86J+8rg1/5ZUL9t0k2S5H+z7KZ1DZwLwmb5yM0+vts=";
    };
    date = "2025-01-05";
  };
  vivaldi-darwin = {
    pname = "vivaldi-darwin";
    version = "7.1.3570.47";
    src = fetchurl {
      url = "https://downloads.vivaldi.com/stable/Vivaldi.7.1.3570.47.universal.dmg";
      sha256 = "sha256-1qLxlzhiPa3KIbIdbo37IkJKmEKNfp+qePnnViurrSY=";
    };
  };
  zen-browser = {
    pname = "zen-browser";
    version = "1.7.5b";
    src = fetchurl {
      url = "https://github.com/zen-browser/desktop/releases/download/1.7.5b/zen.macos-universal.dmg";
      sha256 = "sha256-HB5LooCMeHgn416nQQsqfp1QrUYGi8e71qStg4mlvug=";
    };
  };
}
