{ sources }:

{ mkDerivation, base, hspec, hspec-discover, lattices, lib
, QuickCheck, safe
}:
mkDerivation {
  pname = "cardano-numeric";
  version = "2020.12.8";
  src = "${sources.cardano-wallet}/lib/numeric";
  libraryHaskellDepends = [ base lattices safe ];
  testHaskellDepends = [ base hspec QuickCheck ];
  testToolDepends = [ hspec-discover ];
  homepage = "https://github.com/input-output-hk/cardano-wallet";
  description = "Types and functions for performing numerical calculations";
  license = lib.licenses.asl20;
}
