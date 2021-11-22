{ sources }:

{ mkDerivation, base, bimap, cardano-binary, containers, filepath
, goblins, hashable, hedgehog, lib, microlens, microlens-th
, nothunks, small-steps, small-steps-test, tasty, tasty-hedgehog
, tasty-hunit, template-haskell, Unique
}:
mkDerivation {
  pname = "byron-spec-ledger";
  version = "0.1.0.0";
  src = "${sources.cardano-ledger-specs}/eras/byron/ledger/executable-spec";
  libraryHaskellDepends = [
    base bimap cardano-binary containers filepath goblins hashable
    hedgehog microlens microlens-th nothunks small-steps
    small-steps-test template-haskell Unique
  ];
  testHaskellDepends = [
    base bimap containers hedgehog microlens microlens-th small-steps
    small-steps-test tasty tasty-hedgehog tasty-hunit Unique
  ];
  homepage = "https://github.com/input-output-hk/cardano-legder-specs";
  description = "Executable specification of Cardano ledger";
  license = lib.licenses.asl20;
}
