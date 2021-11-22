{ sources }:

{ mkDerivation, base, deepseq, lib, mono-traversable, primitive
, QuickCheck, tasty, tasty-bench, tasty-quickcheck, vector
}:
mkDerivation {
  pname = "word-array";
  version = "0.1.0.0";
  src = "${sources.plutus}/word-array";
  libraryHaskellDepends = [
    base deepseq mono-traversable primitive
  ];
  testHaskellDepends = [
    base mono-traversable QuickCheck tasty tasty-quickcheck vector
  ];
  benchmarkHaskellDepends = [ base primitive tasty-bench ];
  homepage = "https://github.com/plutus";
  license = lib.licenses.asl20;
}
