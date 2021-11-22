{ sources }:

{ mkDerivation, base, base16-bytestring, bytestring, cardano-binary
, cardano-ledger-alonzo, cardano-ledger-core, cardano-ledger-pretty
, cardano-ledger-shelley, cardano-ledger-shelley-ma
, cardano-ledger-shelley-ma-test, cardano-ledger-shelley-test
, cardano-protocol-tpraos, cardano-slotting, containers
, data-default-class, hashable, lib, plutus-core, plutus-ledger-api
, plutus-tx, QuickCheck, small-steps, small-steps-test
, strict-containers, tasty, tasty-hunit, tasty-quickcheck, text
, time, transformers
}:
mkDerivation {
  pname = "cardano-ledger-alonzo-test";
  version = "0.1.0.0";
  src = "${sources.cardano-ledger-specs}/eras/alonzo/test-suite";
  libraryHaskellDepends = [
    base bytestring cardano-binary cardano-ledger-alonzo
    cardano-ledger-core cardano-ledger-pretty cardano-ledger-shelley
    cardano-ledger-shelley-ma cardano-ledger-shelley-ma-test
    cardano-ledger-shelley-test cardano-protocol-tpraos
    cardano-slotting containers data-default-class hashable
    plutus-ledger-api plutus-tx QuickCheck small-steps
    strict-containers text
  ];
  testHaskellDepends = [
    base base16-bytestring bytestring cardano-binary
    cardano-ledger-alonzo cardano-ledger-core cardano-ledger-pretty
    cardano-ledger-shelley cardano-ledger-shelley-ma
    cardano-ledger-shelley-ma-test cardano-ledger-shelley-test
    cardano-protocol-tpraos cardano-slotting containers
    data-default-class plutus-core plutus-ledger-api plutus-tx
    QuickCheck small-steps small-steps-test strict-containers tasty
    tasty-hunit tasty-quickcheck time transformers
  ];
  description = "Tests for Cardano ledger introducing Plutus Core";
  license = lib.licenses.asl20;
}
