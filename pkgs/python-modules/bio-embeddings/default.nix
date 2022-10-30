{
  lib,
  stdenv,
  buildPythonPackage,
  fetchFromGitHub,
  poetry,
  python,
  scikit-learn,
  matplotlib,
  ruamel-yaml,
  atomicwrites,
  humanize,
  pandas,
  biopython,
  gensim,
  pyyaml,
  tqdm,
  python-slugify,
  appdirs,
  umap-learn,
  pytorch,
  plotly,
  h5py,
  transformers,
  pythonRelaxDepsHook,
}: let
  lock = python.pkgs.callPackage ../lock {};
in
  buildPythonPackage rec {
    pname = "bio_embeddings";
    version = "0.2.3";
    format = "pyproject";

    src = fetchFromGitHub {
      owner = "sacdallago";
      repo = builtins.replaceStrings ["-"] ["_"] pname;
      rev = "v${version}";
      sha256 = "1n604b3rpfixwpaiqyq4hi5xw9hv228kvmx1i773a879f3y52gyl";
    };

    nativeBuildInputs = [poetry pythonRelaxDepsHook];

    pythonRelaxDeps = ["scikit-learn" "humanize" "gensim" "pyyaml" "python-slugify" "torch"];

    passthru.optional-dependencies = {
      seqvec = [];
      prottrans = [transformers];
    };

    propagatedBuildInputs =
      [
        lock
        scikit-learn
        matplotlib
        ruamel-yaml
        atomicwrites
        humanize
        pandas
        biopython
        gensim
        pyyaml
        tqdm
        python-slugify
        appdirs
        umap-learn
        pytorch
        plotly
        h5py
      ]
      ++ passthru.optional-dependencies.prottrans;
  }
