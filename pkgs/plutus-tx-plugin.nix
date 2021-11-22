{ sources }:

{ mkDerivation, base, bytestring, containers, deepseq, extra
, filepath, flat, ghc, ghc-prim, hedgehog, integer-gmp, lens, lib
, mtl, plutus-core, plutus-tx, prettyprinter, tasty, tasty-hedgehog
, template-haskell, text, transformers
}:
mkDerivation {
  pname = "plutus-tx-plugin";
  version = "0.1.0.0";
  src = "${sources.plutus}/plutus-tx-plugin";
  libraryHaskellDepends = [
    base bytestring containers extra flat ghc ghc-prim lens mtl
    plutus-core plutus-tx prettyprinter template-haskell text
    transformers
  ];
  testHaskellDepends = [
    base deepseq filepath flat ghc-prim hedgehog integer-gmp lens mtl
    plutus-core plutus-tx prettyprinter tasty tasty-hedgehog
    template-haskell text
  ];
  description = "The Plutus Tx compiler and GHC plugin";
  license = lib.licenses.asl20;
}
