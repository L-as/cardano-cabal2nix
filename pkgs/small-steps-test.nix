{ sources }:

{ mkDerivation, base, cardano-binary, cardano-crypto-class
, containers, goblins, hedgehog, lib, microlens, microlens-th, mtl
, nothunks, QuickCheck, small-steps, strict-containers, tasty
, tasty-expected-failure, tasty-hedgehog, tasty-hunit
, tasty-quickcheck, transformers, Unique
}:
mkDerivation {
  pname = "small-steps-test";
  version = "0.1.0.0";
  src = "${sources.cardano-ledger-specs}/libs/small-steps-test";
  libraryHaskellDepends = [
    base goblins hedgehog microlens microlens-th mtl nothunks
    QuickCheck small-steps strict-containers tasty-hunit transformers
  ];
  testHaskellDepends = [
    base cardano-binary cardano-crypto-class containers hedgehog mtl
    QuickCheck small-steps tasty tasty-expected-failure tasty-hedgehog
    tasty-hunit tasty-quickcheck Unique
  ];
  homepage = "https://github.com/input-output-hk/cardano-legder-specs";
  description = "Small step semantics testing library";
  license = lib.licenses.asl20;
}
