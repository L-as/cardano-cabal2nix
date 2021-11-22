{ sources }:

{ mkDerivation, aeson, base, base16-bytestring, bytestring, cborg
, containers, deepseq, flat, hashable, hedgehog, lens, lib, memory
, mtl, newtype-generics, plutus-core, plutus-tx, prettyprinter
, scientific, serialise, tagged, tasty, tasty-hedgehog, tasty-hunit
, tasty-quickcheck, template-haskell, text, transformers
}:
mkDerivation {
  pname = "plutus-ledger-api";
  version = "0.1.0.0";
  src = "${sources.plutus}/plutus-ledger-api";
  libraryHaskellDepends = [
    aeson base base16-bytestring bytestring cborg containers deepseq
    flat hashable lens memory mtl newtype-generics plutus-core
    plutus-tx prettyprinter scientific serialise tagged
    template-haskell text transformers
  ];
  testHaskellDepends = [
    aeson base hedgehog tasty tasty-hedgehog tasty-hunit
    tasty-quickcheck
  ];
  description = "Interface to the Plutus ledger for the Cardano ledger";
  license = lib.licenses.asl20;
}
