# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  copyq-darwin = {
    pname = "copyq-darwin";
    version = "7.1.0";
    src = fetchurl {
      url = "https://github.com/hluk/CopyQ/releases/download/v7.1.0/CopyQ.dmg.zip";
      sha256 = "sha256-8dYfEZSSI5NHGXXA+KzPg61Y7Z6nezo0Knced3j3TRU=";
    };
  };
  nixfmt = {
    pname = "nixfmt";
    version = "ca1fe3572ea6134551ee6af40ae735a1a1ed0d35";
    src = fetchFromGitHub {
      owner = "piegamesde";
      repo = "nixfmt";
      rev = "ca1fe3572ea6134551ee6af40ae735a1a1ed0d35";
      fetchSubmodules = false;
      sha256 = "sha256-d7a6xfqhbyLikHultxjHO33SqUcif/8eGyxhRZ9PvZk=";
    };
    date = "2024-02-08";
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
    version = "0.3.0";
    src = fetchurl {
      url = "https://github.com/qmk/qmk_toolbox/releases/download/0.3.0/QMK.Toolbox.app.zip";
      sha256 = "sha256-KrXokUrglXE4emfdxAMux64CIHdOm96GX72zrXXxxaU=";
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
    version = "c0286cc701d1fd1e20f8a22afdb0eead31ffc87c";
    src = fetchFromGitHub {
      owner = "FelixKratz";
      repo = "SbarLua";
      rev = "c0286cc701d1fd1e20f8a22afdb0eead31ffc87c";
      fetchSubmodules = false;
      sha256 = "sha256-+gzPAe/MpK48hWIvCXHYv33SrcOmobyXZDx/Y6fWpiA=";
    };
    date = "2024-02-20";
  };
  skkeleton = {
    pname = "skkeleton";
    version = "32e0048f0f4198ef0344b5f177056db7b41bdcef";
    src = fetchFromGitHub {
      owner = "vim-skk";
      repo = "skkeleton";
      rev = "32e0048f0f4198ef0344b5f177056db7b41bdcef";
      fetchSubmodules = false;
      sha256 = "sha256-sizoaeJgXZkHvigsRk/EFZT5DD+fPq+OWrIGu66/p8M=";
    };
    date = "2024-02-13";
  };
  vivaldi-darwin = {
    pname = "vivaldi-darwin";
    version = "6.5.3206.63";
    src = fetchurl {
      url = "https://downloads.vivaldi.com/stable/Vivaldi.6.5.3206.63.universal.dmg";
      sha256 = "sha256-e2Z5jYaEYK7Bev9Y2LgAk5p7NnPfsfM2FAUnmMyHmMM=";
    };
  };
}
