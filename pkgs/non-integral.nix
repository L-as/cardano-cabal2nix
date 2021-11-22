{ sources }:

{ mkDerivation, base, lib, QuickCheck }:
mkDerivation {
  pname = "non-integral";
  version = "0.1.0.0";
  src = "${sources.cardano-ledger-specs}/libs/non-integral";
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base QuickCheck ];
  license = lib.licenses.asl20;
}
