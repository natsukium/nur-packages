{
  lib,
  stdenv,
  buildPythonPackage,
  fetchPypi,
}:
buildPythonPackage rec {
  pname = "lock";
  version = "2018.3.25.2110";
  format = "setuptools";

  src = fetchPypi {
    inherit pname version;
    sha256 = "cc5ac770930493eed7a8cfd0cf2568a125faf112eb8aa6b6149b3e581523d0c7";
  };
}
