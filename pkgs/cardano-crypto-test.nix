{ sources }:

{ mkDerivation, base, bytestring, cardano-binary
, cardano-binary-test, cardano-crypto, cardano-crypto-wrapper
, cardano-prelude, cardano-prelude-test, cryptonite, hedgehog, lib
, memory
}:
mkDerivation {
  pname = "cardano-crypto-test";
  version = "1.3.0";
  src = "${sources.cardano-ledger-specs}/eras/byron/crypto/test";
  libraryHaskellDepends = [
    base bytestring cardano-binary cardano-binary-test cardano-crypto
    cardano-crypto-wrapper cardano-prelude cardano-prelude-test
    cryptonite hedgehog memory
  ];
  description = "Test helpers from cardano-crypto exposed to other packages";
  license = lib.licenses.asl20;
}
