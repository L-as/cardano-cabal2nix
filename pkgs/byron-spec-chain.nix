{ sources }:

{ mkDerivation, base, bimap, byron-spec-ledger, bytestring
, containers, data-ordlist, goblins, hashable, hedgehog, lib
, microlens, microlens-th, small-steps, small-steps-test, tasty
, tasty-hedgehog, tasty-hunit
}:
mkDerivation {
  pname = "byron-spec-chain";
  version = "0.1.0.0";
  src = "${sources.cardano-ledger-specs}/eras/byron/chain/executable-spec";
  libraryHaskellDepends = [
    base bimap byron-spec-ledger bytestring containers goblins hashable
    hedgehog microlens microlens-th small-steps small-steps-test
  ];
  testHaskellDepends = [
    base byron-spec-ledger containers data-ordlist hedgehog microlens
    small-steps small-steps-test tasty tasty-hedgehog tasty-hunit
  ];
  homepage = "https://github.com/input-output-hk/cardano-legder-specs";
  description = "Executable specification of the Cardano blockchain";
  license = lib.licenses.asl20;
}
