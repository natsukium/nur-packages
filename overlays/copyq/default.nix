final: prev: {
  copyq =
    if prev.stdenv.hostPlatform.isLinux then
      prev.copyq
    else
      let
        source =
          (import ../../_sources/generated.nix {
            inherit (prev)
              fetchgit
              fetchurl
              fetchFromGitHub
              dockerTools
              ;
          }).copyq-darwin;
      in
      prev.stdenv.mkDerivation {
        pname = "copyq";
        inherit (source) version src;

        preferLocalBuild = true;

        nativeBuildInputs = [
          prev.undmg
          prev.unzip
        ];

        unpackCmd = ''
          unzip $curSrc
          undmg CopyQ.dmg
        '';

        sourceRoot = "CopyQ.app";

        installPhase = ''
          mkdir -p $out/Applications/CopyQ.app
          cp -R . $out/Applications/CopyQ.app
        '';

        meta = with prev.lib; {
          homepage = "https://hluk.github.io/CopyQ";
          description = "Clipboard Manager with Advanced Features";
          license = licenses.gpl3Only;
          platforms = [ "aarch64-darwin" ];
        };
      };
}
