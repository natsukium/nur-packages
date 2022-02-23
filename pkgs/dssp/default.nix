{ lib, stdenv, fetchgit, automake, autoconf, boost, }:

stdenv.mkDerivation rec {
  pname = "dssp";
  version = "3.1.4";

  src = fetchgit {
    url = "https://github.com/cmbi/dssp";
    rev = version;
    sha256 = "1xk4wy6w2ccp2ccj9i04kgljxpb7k0pj16137c9w1n0idlldsr83";
  };

  nativeBuildInputs = [ automake autoconf ];

  buildInputs = [ (boost.override { enableStatic = true; taggedLayout = false; }) ];

  preConfigure = ''
    ./autogen.sh
  '';

  configureFlags = [
    "--with-boost-thread=boost_thread"
    "--with-boost-unit_test_framework=boost_unit_test_framework"
  ];

  meta = with lib;
    {
      description = "Calculate the most likely secondary structure assignment given the 3D structure of a protein";
      homepage = "https://github.com/cmbi/dssp";
      license = licenses.boost;
      platforms = platforms.unix;
    };
}
