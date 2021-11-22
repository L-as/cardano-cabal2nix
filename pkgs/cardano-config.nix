{ sources }:

{ mkDerivation, base, cardano-prelude, file-embed, lib, process
, template-haskell, text
}:
mkDerivation {
  pname = "cardano-config";
  version = "0.1.0.0";
  src = "${sources.cardano-node}/cardano-config";
  libraryHaskellDepends = [
    base cardano-prelude file-embed process template-haskell text
  ];
  license = lib.licenses.asl20;
}
