{ sources }:

{ mkDerivation, aeson, aeson-pretty, attoparsec, base
, base16-bytestring, bytestring, canonical-json, cardano-prelude
, containers, cryptonite, formatting, ghc-heap, ghc-prim, hedgehog
, hspec, lib, pretty-show, QuickCheck, quickcheck-instances
, template-haskell, text, time
}:
mkDerivation {
  pname = "cardano-prelude-test";
  version = "0.1.0.0";
  src = "${sources.cardano-prelude}/cardano-prelude-test";
  libraryHaskellDepends = [
    aeson aeson-pretty attoparsec base base16-bytestring bytestring
    canonical-json cardano-prelude containers cryptonite formatting
    hedgehog hspec pretty-show QuickCheck quickcheck-instances
    template-haskell text time
  ];
  testHaskellDepends = [
    base bytestring cardano-prelude ghc-heap ghc-prim hedgehog text
  ];
  description = "Utility types and functions for testing Cardano";
  license = lib.licenses.mit;
}
