# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  copyq-darwin = {
    pname = "copyq-darwin";
    version = "8.0.0";
    src = fetchurl {
      url = "https://github.com/hluk/CopyQ/releases/download/v8.0.0/CopyQ-macos-12-m1.dmg.zip";
      sha256 = "sha256-F8s0JIAgPBmXiunw8yB8hBEz32M/Il4dK2lFrPa9SXU=";
    };
  };
  emacs-plus = {
    pname = "emacs-plus";
    version = "61a1e971b228f416a95374cb8e5d95631fff3a42";
    src = fetchFromGitHub {
      owner = "d12frosted";
      repo = "homebrew-emacs-plus";
      rev = "61a1e971b228f416a95374cb8e5d95631fff3a42";
      fetchSubmodules = false;
      sha256 = "sha256-MBlhdjxrn3cpis5+gpmRZIcygfEI8jtc5jihYuaDuDQ=";
    };
    date = "2024-04-05";
  };
  nixfmt = {
    pname = "nixfmt";
    version = "87c4879b7a72a69726b76392847fb79a7044c6a6";
    src = fetchFromGitHub {
      owner = "NixOS";
      repo = "nixfmt";
      rev = "87c4879b7a72a69726b76392847fb79a7044c6a6";
      fetchSubmodules = false;
      sha256 = "sha256-Xx0hY9XXXOmOgTlgpX9r1bQkigWhNXXEzeVRBI46EfY=";
    };
    date = "2024-04-16";
  };
  nixpkgs-review = {
    pname = "nixpkgs-review";
    version = "8e8f6f97a8259728f7bdbe8ca0aaec87d5f33cc9";
    src = fetchFromGitHub {
      owner = "natsukium";
      repo = "nixpkgs-review";
      rev = "8e8f6f97a8259728f7bdbe8ca0aaec87d5f33cc9";
      fetchSubmodules = false;
      sha256 = "sha256-E8dtlnor79fKVGAGxwibntfSPCcjCmpAYLO+Dxku69k=";
    };
    date = "2024-02-20";
  };
  nowplaying-cli = {
    pname = "nowplaying-cli";
    version = "1.2.1";
    src = fetchurl {
      url = "https://github.com/kirtan-shah/nowplaying-cli/archive/v1.2.1.tar.gz";
      sha256 = "sha256-u0kSPGYoK2SVwkVYkxOvyUh1p7DoLJrp951vJedQPbQ=";
    };
  };
  qmk-toolbox = {
    pname = "qmk-toolbox";
    version = "0.3.1";
    src = fetchurl {
      url = "https://github.com/qmk/qmk_toolbox/releases/download/0.3.1/QMK.Toolbox.app.zip";
      sha256 = "sha256-J3yh/VsTSAyU688/GToOI4hOkRFdozxTVvp9Yp/bIlg=";
    };
  };
  qutebrowser-darwin = {
    pname = "qutebrowser-darwin";
    version = "3.1.0";
    src = fetchurl {
      url = "https://github.com/qutebrowser/qutebrowser/releases/download/v3.1.0/qutebrowser-3.1.0.dmg";
      sha256 = "sha256-AvuuwUnxMcr2ekZ/O1FL/4IizV1aTMhXNrbf1SwNY7U=";
    };
  };
  sbarlua = {
    pname = "sbarlua";
    version = "29395b1928835efa1b376d438216fbf39e0d0f83";
    src = fetchFromGitHub {
      owner = "FelixKratz";
      repo = "SbarLua";
      rev = "29395b1928835efa1b376d438216fbf39e0d0f83";
      fetchSubmodules = false;
      sha256 = "sha256-C2tg1mypz/CdUmRJ4vloPckYfZrwHxc4v8hsEow4RZs=";
    };
    date = "2024-02-28";
  };
  skkeleton = {
    pname = "skkeleton";
    version = "438b9d22d926569db6e6034e0d333edce5f4d4cf";
    src = fetchFromGitHub {
      owner = "vim-skk";
      repo = "skkeleton";
      rev = "438b9d22d926569db6e6034e0d333edce5f4d4cf";
      fetchSubmodules = false;
      sha256 = "sha256-jXPMDxiyJ3w4cpRgonlXjdmSJHsnkLhG6NeBjYjeKeo=";
    };
    date = "2024-03-21";
  };
  vim-startuptime = {
    pname = "vim-startuptime";
    version = "1.3.2";
    src = fetchurl {
      url = "https://github.com/rhysd/vim-startuptime/archive/v1.3.2.tar.gz";
      sha256 = "sha256-1IB0DZJ+pAME35jxM1whJ/R+D6ZX9rjxHmXnQBX/IdQ=";
    };
  };
  vivaldi-darwin = {
    pname = "vivaldi-darwin";
    version = "6.6.3271.61";
    src = fetchurl {
      url = "https://downloads.vivaldi.com/stable/Vivaldi.6.6.3271.61.universal.dmg";
      sha256 = "sha256-cj9cej+T/KgFL1mn2UGEInlk7s45xAOhgt7kpg6jrbU=";
    };
  };
}
