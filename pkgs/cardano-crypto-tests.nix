{ sources }:

{ mkDerivation, base, bytestring, cardano-binary
, cardano-crypto-class, cardano-crypto-praos, cardano-prelude
, cborg, criterion, cryptonite, formatting, lib, nothunks
, QuickCheck, quickcheck-instances, tasty, tasty-quickcheck
}:
mkDerivation {
  pname = "cardano-crypto-tests";
  version = "2.0.0";
  src = "${sources.cardano-base}/cardano-crypto-tests";
  libraryHaskellDepends = [
    base bytestring cardano-binary cardano-crypto-class
    cardano-crypto-praos cardano-prelude cborg criterion cryptonite
    formatting nothunks QuickCheck quickcheck-instances tasty
    tasty-quickcheck
  ];
  testHaskellDepends = [ base cardano-crypto-class tasty ];
  benchmarkHaskellDepends = [ base cardano-crypto-class criterion ];
  description = "Tests for cardano-crypto-class and -praos";
  license = lib.licenses.asl20;
}
