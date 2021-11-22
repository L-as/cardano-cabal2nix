{ sources }:

{ mkDerivation, aeson, array, base, bytestring, cardano-binary
, cardano-crypto-class, cardano-ledger-alonzo
, cardano-ledger-alonzo-test, cardano-ledger-core
, cardano-ledger-pretty, cardano-ledger-shelley
, cardano-ledger-shelley-ma, cardano-ledger-shelley-ma-test
, cardano-ledger-shelley-test, cardano-protocol-tpraos
, cardano-slotting, containers, criterion, data-default-class
, deepseq, genvalidity, genvalidity-scientific, lib, mtl
, plutus-ledger-api, QuickCheck, scientific, small-steps
, small-steps-test, strict-containers, tasty, tasty-hunit
, tasty-quickcheck, time, transformers
}:
mkDerivation {
  pname = "cardano-ledger-test";
  version = "0.1.0.0";
  src = "${sources.cardano-ledger-specs}/libs/cardano-ledger-test";
  libraryHaskellDepends = [
    aeson array base bytestring cardano-binary cardano-crypto-class
    cardano-ledger-alonzo cardano-ledger-alonzo-test
    cardano-ledger-core cardano-ledger-pretty cardano-ledger-shelley
    cardano-ledger-shelley-ma cardano-ledger-shelley-test
    cardano-protocol-tpraos cardano-slotting containers
    data-default-class genvalidity genvalidity-scientific mtl
    plutus-ledger-api QuickCheck scientific small-steps
    small-steps-test strict-containers tasty tasty-hunit
    tasty-quickcheck time transformers
  ];
  testHaskellDepends = [ base cardano-ledger-shelley-test tasty ];
  benchmarkHaskellDepends = [
    base bytestring cardano-binary cardano-crypto-class
    cardano-ledger-alonzo cardano-ledger-alonzo-test
    cardano-ledger-core cardano-ledger-shelley
    cardano-ledger-shelley-ma cardano-ledger-shelley-ma-test
    cardano-ledger-shelley-test containers criterion data-default-class
    deepseq QuickCheck small-steps tasty tasty-quickcheck
  ];
  description = "Testing harness, tests and benchmarks for Shelley style cardano ledgers";
  license = lib.licenses.asl20;
}
