{ sources }:

{ mkDerivation, base, base16-bytestring, bimap, byron-spec-chain
, byron-spec-ledger, bytestring, cardano-binary
, cardano-binary-test, cardano-crypto, cardano-crypto-test
, cardano-crypto-wrapper, cardano-ledger-byron, cardano-prelude
, cardano-prelude-test, containers, directory, filepath, formatting
, generic-monoid, hedgehog, lib, microlens, resourcet, small-steps
, small-steps-test, streaming, tasty, tasty-hedgehog, text, time
, vector
}:
mkDerivation {
  pname = "cardano-ledger-byron-test";
  version = "1.3.0";
  src = "${sources.cardano-ledger-specs}/eras/byron/ledger/impl/test";
  libraryHaskellDepends = [
    base base16-bytestring bimap byron-spec-chain byron-spec-ledger
    bytestring cardano-binary cardano-binary-test cardano-crypto
    cardano-crypto-test cardano-crypto-wrapper cardano-ledger-byron
    cardano-prelude cardano-prelude-test containers directory filepath
    formatting generic-monoid hedgehog microlens resourcet small-steps
    small-steps-test streaming tasty tasty-hedgehog text time vector
  ];
  description = "Test helpers from cardano-ledger exposed to other packages";
  license = lib.licenses.asl20;
}
