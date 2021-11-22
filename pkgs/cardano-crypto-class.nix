{ sources }:

{ mkDerivation, aeson, base, base16-bytestring, bytestring
, cardano-binary, cardano-prelude, cryptonite, deepseq, ghc-prim
, integer-gmp, lib, libsodium, memory, nothunks, primitive
, serialise, text, transformers, unix, vector
}:
mkDerivation {
  pname = "cardano-crypto-class";
  version = "2.0.0";
  src = "${sources.cardano-base}/cardano-crypto-class";
  libraryHaskellDepends = [
    aeson base base16-bytestring bytestring cardano-binary
    cardano-prelude cryptonite deepseq ghc-prim integer-gmp memory
    nothunks primitive serialise text transformers vector
  ];
  libraryPkgconfigDepends = [ libsodium ];
  testHaskellDepends = [ base bytestring unix ];
  description = "Type classes abstracting over cryptography primitives for Cardano";
  license = lib.licenses.asl20;
}
