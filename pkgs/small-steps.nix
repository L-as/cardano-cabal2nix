{ sources }:

{ mkDerivation, aeson, ansi-wl-pprint, base, bytestring
, cardano-binary, cardano-crypto-class, cborg, containers
, cryptonite, data-default-class, deepseq, formatting, free, lib
, mtl, nothunks, strict-containers, text, transformers
}:
mkDerivation {
  pname = "small-steps";
  version = "0.1.0.0";
  src = "${sources.cardano-ledger-specs}/libs/small-steps";
  libraryHaskellDepends = [
    aeson ansi-wl-pprint base bytestring cardano-binary
    cardano-crypto-class cborg containers cryptonite data-default-class
    deepseq formatting free mtl nothunks strict-containers text
    transformers
  ];
  homepage = "https://github.com/input-output-hk/cardano-legder-specs";
  description = "Small step semantics";
  license = lib.licenses.asl20;
}
