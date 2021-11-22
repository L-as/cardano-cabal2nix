{ sources }:

{ mkDerivation, array, base, cardano-binary, cardano-crypto-class
, cardano-prelude, containers, deepseq, lib, nothunks
, prettyprinter, primitive, QuickCheck, quickcheck-classes-base
, random, tasty, tasty-quickcheck, text, vector, vector-algorithms
}:
mkDerivation {
  pname = "compact-map";
  version = "0.1.0.0";
  src = "${sources.cardano-ledger-specs}/libs/compact-map";
  libraryHaskellDepends = [
    array base cardano-binary cardano-crypto-class cardano-prelude
    containers deepseq nothunks prettyprinter primitive random text
    vector vector-algorithms
  ];
  testHaskellDepends = [
    base containers QuickCheck quickcheck-classes-base tasty
    tasty-quickcheck
  ];
  homepage = "https://github.com/input-output-hk/cardano-legder-specs";
  description = "A KeyMap that is based on collisionless HashMap implementation";
  license = lib.licenses.asl20;
}
