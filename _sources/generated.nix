# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  age-plugin-se = {
    pname = "age-plugin-se";
    version = "v0.1.4";
    src = fetchFromGitHub {
      owner = "remko";
      repo = "age-plugin-se";
      rev = "v0.1.4";
      fetchSubmodules = false;
      sha256 = "sha256-sg73DzlW4aXNbIIePZox4JkF10OfsMtPw0q/0DWwgDk=";
    };
  };
  copyq-darwin = {
    pname = "copyq-darwin";
    version = "10.0.0";
    src = fetchurl {
      url = "https://github.com/hluk/CopyQ/releases/download/v10.0.0/CopyQ-macos-12-m1.dmg.zip";
      sha256 = "sha256-9TXMRaHfd3ZD/kcgDCBrOp1GG3tYhpsXg6t94clezNw=";
    };
  };
  emacs-plus = {
    pname = "emacs-plus";
    version = "3e95d573d5f13aba7808193b66312b38a7c66851";
    src = fetchFromGitHub {
      owner = "d12frosted";
      repo = "homebrew-emacs-plus";
      rev = "3e95d573d5f13aba7808193b66312b38a7c66851";
      fetchSubmodules = false;
      sha256 = "sha256-Eepinxv05Yl79AoPVJveGDZPKHhlAes7XtUvrssflrU=";
    };
    date = "2025-03-31";
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
    version = "88aa02ad9002d1b5697aeaf9fb27cdb5cedc4964";
    src = fetchFromGitHub {
      owner = "mogenson";
      repo = "PaperWM.spoon";
      rev = "88aa02ad9002d1b5697aeaf9fb27cdb5cedc4964";
      fetchSubmodules = false;
      sha256 = "sha256-c6ltYZKLjZXXin8UaURY0xIrdFvA06aKxC5oty2FCdY=";
    };
    date = "2025-04-07";
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
    version = "cf385775279c0c7eed3fbebfac1022f1f05ea292";
    src = fetchFromGitHub {
      owner = "vim-skk";
      repo = "skkeleton";
      rev = "cf385775279c0c7eed3fbebfac1022f1f05ea292";
      fetchSubmodules = false;
      sha256 = "sha256-DA/k2KxGqxYtyJcnV1g2lLbMtNKBXpPGje5WeYYnbtQ=";
    };
    date = "2025-03-30";
  };
  vivaldi-darwin = {
    pname = "vivaldi-darwin";
    version = "7.3.3635.9";
    src = fetchurl {
      url = "https://downloads.vivaldi.com/stable/Vivaldi.7.3.3635.9.universal.dmg";
      sha256 = "sha256-+XDLbEZWOCjTLhXz9pTY79eHCqwBYsruDWVLUtojbMk=";
    };
  };
  zen-browser = {
    pname = "zen-browser";
    version = "1.11.1b";
    src = fetchurl {
      url = "https://github.com/zen-browser/desktop/releases/download/1.11.1b/zen.macos-universal.dmg";
      sha256 = "sha256-nNdz1HdyrkfH8AkEtyJIvOV+A63FClJ/J7hJTIBs0og=";
    };
  };
}
