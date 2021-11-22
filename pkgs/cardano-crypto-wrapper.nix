{ sources }:

{ mkDerivation, aeson, base, base16-bytestring, base64-bytestring
, base64-bytestring-type, binary, bytestring, canonical-json
, cardano-binary, cardano-binary-test, cardano-crypto
, cardano-prelude, cardano-prelude-test, cryptonite, data-default
, formatting, hedgehog, lib, memory, mtl, nothunks, text
}:
mkDerivation {
  pname = "cardano-crypto-wrapper";
  version = "1.3.0";
  src = "${sources.cardano-ledger-specs}/eras/byron/crypto";
  libraryHaskellDepends = [
    aeson base base16-bytestring base64-bytestring
    base64-bytestring-type binary bytestring canonical-json
    cardano-binary cardano-crypto cardano-prelude cryptonite
    data-default formatting memory mtl nothunks text
  ];
  testHaskellDepends = [
    base bytestring cardano-binary cardano-binary-test cardano-crypto
    cardano-prelude cardano-prelude-test cryptonite formatting hedgehog
    memory text
  ];
  description = "Cryptographic primitives used in the Cardano project";
  license = lib.licenses.asl20;
}
