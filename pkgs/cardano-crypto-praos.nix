{ sources }:

{ mkDerivation, base, bytestring, cardano-binary
, cardano-crypto-class, cardano-prelude, lib, libsodium, nothunks
}:
mkDerivation {
  pname = "cardano-crypto-praos";
  version = "2.0.0";
  src = "${sources.cardano-base}/cardano-crypto-praos";
  libraryHaskellDepends = [
    base bytestring cardano-binary cardano-crypto-class cardano-prelude
    nothunks
  ];
  libraryPkgconfigDepends = [ libsodium ];
  description = "Crypto primitives from libsodium";
  license = lib.licenses.asl20;
}
