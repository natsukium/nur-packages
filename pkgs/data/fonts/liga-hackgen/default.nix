{
  lib,
  stdenv,
  hackgen-font,
  nerdfont ? false,
  hackgen-nf-font,
  ligaturizer,
}: let
  family =
    if nerdfont
    then "hackgen-nf"
    else "hackgen";
in
    version = "0.0.1";
  stdenv.mkDerivation {
    pname = "liga-${family}-font";
    src = "${
      if nerdfont
      then hackgen-nf-font
      else hackgen-font
    }/share/fonts/${family}";

    installPhase = ''
      runHook preInstall

      mkdir -p $out/share/fonts/liga-${family}
      for font in $(ls $src); do
        ${ligaturizer}/bin/ligaturizer $src/$font --output-dir=$out/share/fonts/liga-${family} --prefix="Liga"
      done

      runHook postInstall
    '';

    phases = ["installPhase"];

    meta = with lib; {
      description = "Ligaturized ${family} with fira code";
      platforms = platforms.unix;
    };
  }
