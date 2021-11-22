{ sources }:

{ mkDerivation, aeson, base, bytestring, cborg, containers, deepseq
, doctest, flat, ghc-prim, hashable, hedgehog, lens, lib, memory
, mtl, plutus-core, prettyprinter, serialise, tasty, tasty-hedgehog
, tasty-hunit, template-haskell, text, th-abstraction
}:
mkDerivation {
  pname = "plutus-tx";
  version = "0.1.0.0";
  src = "${sources.plutus}/plutus-tx";
  libraryHaskellDepends = [
    aeson base bytestring containers deepseq flat ghc-prim hashable
    lens memory mtl plutus-core prettyprinter serialise
    template-haskell text th-abstraction
  ];
  testHaskellDepends = [
    base bytestring cborg hedgehog plutus-core serialise tasty
    tasty-hedgehog tasty-hunit
  ];
  testToolDepends = [ doctest ];
  description = "Libraries for Plutus Tx and its prelude";
  license = lib.licenses.asl20;
}
