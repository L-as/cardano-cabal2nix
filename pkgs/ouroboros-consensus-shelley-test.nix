{ sources }:

{ mkDerivation, base, bytestring, cardano-crypto-class
, cardano-ledger-alonzo, cardano-ledger-alonzo-test
, cardano-ledger-core, cardano-ledger-shelley
, cardano-ledger-shelley-ma, cardano-ledger-shelley-ma-test
, cardano-ledger-shelley-test, cardano-protocol-tpraos
, cardano-slotting, cborg, containers, filepath, generic-random
, lib, mtl, ouroboros-consensus, ouroboros-consensus-shelley
, ouroboros-consensus-test, ouroboros-network, QuickCheck, quiet
, small-steps, strict-containers, tasty, tasty-quickcheck
, transformers
}:
mkDerivation {
  pname = "ouroboros-consensus-shelley-test";
  version = "0.1.0.0";
  src = "${sources.ouroboros-network}/ouroboros-consensus-shelley-test";
  libraryHaskellDepends = [
    base bytestring cardano-crypto-class cardano-ledger-alonzo
    cardano-ledger-alonzo-test cardano-ledger-core
    cardano-ledger-shelley cardano-ledger-shelley-ma
    cardano-ledger-shelley-ma-test cardano-ledger-shelley-test
    cardano-protocol-tpraos cardano-slotting containers generic-random
    mtl ouroboros-consensus ouroboros-consensus-shelley
    ouroboros-consensus-test ouroboros-network QuickCheck quiet
    small-steps strict-containers transformers
  ];
  testHaskellDepends = [
    base bytestring cardano-crypto-class cardano-ledger-alonzo
    cardano-ledger-alonzo-test cardano-ledger-core
    cardano-ledger-shelley cardano-slotting cborg containers filepath
    ouroboros-consensus ouroboros-consensus-shelley
    ouroboros-consensus-test ouroboros-network QuickCheck tasty
    tasty-quickcheck
  ];
  description = "Test infrastructure for Shelley";
  license = lib.licenses.asl20;
}
