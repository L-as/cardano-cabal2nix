{ sources }:

{ mkDerivation, array, base, bytestring, cardano-binary
, cardano-crypto-class, cardano-crypto-praos, cardano-ledger-core
, cardano-ledger-shelley, cardano-ledger-shelley-test
, cardano-prelude, cardano-protocol-tpraos, cardano-slotting, cborg
, containers, data-default-class, deepseq, generic-random, groups
, hashable, lib, mtl, nothunks, prettyprinter, primitive
, QuickCheck, small-steps, small-steps-test, strict-containers
, tasty, tasty-hunit, tasty-quickcheck, text, transformers
}:
mkDerivation {
  pname = "cardano-ledger-example-shelley";
  version = "0.1.0.0";
  src = "${sources.cardano-ledger-specs}/libs/cardano-ledger-example-shelley";
  libraryHaskellDepends = [
    array base bytestring cardano-binary cardano-crypto-class
    cardano-crypto-praos cardano-ledger-core cardano-ledger-shelley
    cardano-ledger-shelley-test cardano-prelude cardano-protocol-tpraos
    cardano-slotting cborg containers data-default-class deepseq
    generic-random groups hashable mtl nothunks prettyprinter primitive
    QuickCheck small-steps strict-containers tasty tasty-hunit
    tasty-quickcheck text transformers
  ];
  testHaskellDepends = [
    base bytestring cardano-binary cardano-crypto-class
    cardano-ledger-core cardano-ledger-shelley
    cardano-ledger-shelley-test cardano-prelude cardano-slotting cborg
    containers data-default-class generic-random mtl QuickCheck
    small-steps small-steps-test strict-containers tasty tasty-hunit
    tasty-quickcheck
  ];
  doHaddock = false;
  description = "Example era within Shelley context";
  license = lib.licenses.asl20;
}
