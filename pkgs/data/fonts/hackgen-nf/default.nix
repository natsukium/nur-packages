{ lib, fetchzip }:

let
  version = "2.7.1";
in
  fetchzip {
    name = "HackGen-NF-${version}";
    url = "https://github.com/yuru7/HackGen/releases/download/v${version}/HackGen_NF_v${version}.zip";
    postFetch = ''
      mkdir -p $out/share/fonts
      unzip -j $downloadedFile \*.ttf -d $out/share/fonts/hackgen-nf
    '';
    sha256 = "sha256-TsL9xxsZur9kXvb2/49QZ19ovCguVExIoojzMIM/Y/U=";

    meta = with lib; {
      description = "compoite font of Hack and GenJyuu-Gothic";
      homepage = "https://github.com/yuru7/HackGen";
      license = licenses.ofl;
      platforms = platforms.unix;
    };
  }
