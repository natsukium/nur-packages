final: prev: {
  qutebrowser =
    if prev.stdenv.hostPlatform.isLinux then
      prev.qutebrowser
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
          }).qutebrowser-darwin;
      in
      prev.stdenv.mkDerivation {
        pname = "qutebrowser";
        inherit (source) version src;

        preferLocalBuild = true;

        nativeBuildInputs = [ prev.undmg ];

        sourceRoot = "qutebrowser.app";

        installPhase = ''
          mkdir -p "$out/Applications/qutebrowser.app"
          cp -R . "$out/Applications/qutebrowser.app"
        '';

        meta = with prev.lib; {
          description = "Keyboard-focused browser with a minimal GUI";
          homepage = "https://github.com/qutebrowser/qutebrowser";
          license = licenses.gpl3;
          platforms = platforms.darwin;
        };
      };
}
