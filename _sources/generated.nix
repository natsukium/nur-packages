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
    version = "d68642101a3577d990ed19a73b4ab8086da77625";
    src = fetchFromGitHub {
      owner = "d12frosted";
      repo = "homebrew-emacs-plus";
      rev = "d68642101a3577d990ed19a73b4ab8086da77625";
      fetchSubmodules = false;
      sha256 = "sha256-Pi5F+jmUTTCrigzPpSUwGviQsRDbMoAUaz3REpV/Oy4=";
    };
    date = "2024-10-28";
  };
  nixpkgs-review = {
    pname = "nixpkgs-review";
    version = "c012c3ebc4aa63dd47be1bf0063e8cf0949bc294";
    src = fetchFromGitHub {
      owner = "natsukium";
      repo = "nixpkgs-review";
      rev = "c012c3ebc4aa63dd47be1bf0063e8cf0949bc294";
      fetchSubmodules = false;
      sha256 = "sha256-Bzut7cuOHPrgvNSa2USZEuln8glMjKwhXyEoi5lSKZ8=";
    };
    date = "2024-09-23";
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
    version = "3.3.1";
    src = fetchurl {
      url = "https://github.com/qutebrowser/qutebrowser/releases/download/v3.3.1/qutebrowser-3.3.1-arm64.dmg";
      sha256 = "sha256-09E0wYS/EsjRE56sDK6iQBOGUsCdGKzT/4AY+qxkqok=";
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
    version = "2cdd414c1bfa8c363505b8dfc9f50ef2f446ea61";
    src = fetchFromGitHub {
      owner = "vim-skk";
      repo = "skkeleton";
      rev = "2cdd414c1bfa8c363505b8dfc9f50ef2f446ea61";
      fetchSubmodules = false;
      sha256 = "sha256-7oTJGGkUb3K8nzcPqlJrm316ECmgswy/+N8cTQghv3k=";
    };
    date = "2024-10-14";
  };
  vivaldi-darwin = {
    pname = "vivaldi-darwin";
    version = "7.0.3495.6";
    src = fetchurl {
      url = "https://downloads.vivaldi.com/stable/Vivaldi.7.0.3495.6.universal.dmg";
      sha256 = "sha256-uNO127SDvChZ0ILjIXAMTIWp4FRa1MtFEY5fxGwfB+s=";
    };
  };
}
