{ lib, fetchzip }:

let
  version = "2.7.1";
in
  fetchzip {
    name = "HackGen-${version}";
    url = "https://github.com/yuru7/HackGen/releases/download/v${version}/HackGen_v${version}.zip";
    postFetch = ''
      mkdir -p $out/share/fonts
      unzip -j $downloadedFile \*.ttf -d $out/share/fonts/hackgen
    '';
    sha256 = "sha256-UL6U/q2u1UUP31lp0tEnFjzkn6dn8AY6hk5hJhPsOAE=";
  }
