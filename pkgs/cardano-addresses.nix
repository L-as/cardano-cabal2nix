{ sources }:

{ mkDerivation, aeson, aeson-pretty, base, base58-bytestring
, basement, bech32, bech32-th, binary, bytestring, cardano-crypto
, cborg, containers, cryptonite, deepseq, digest, either
, exceptions, extra, fmt, hashable, hspec, hspec-discover
, hspec-golden, lib, memory, pretty-simple, QuickCheck, text
, unordered-containers
}:
mkDerivation {
  pname = "cardano-addresses";
  version = "3.6.0";
  src = "${sources.cardano-addresses}/core";
  libraryHaskellDepends = [
    aeson base base58-bytestring basement bech32 bech32-th binary
    bytestring cardano-crypto cborg containers cryptonite deepseq
    digest either exceptions extra fmt hashable memory text
    unordered-containers
  ];
  testHaskellDepends = [
    aeson aeson-pretty base bech32 binary bytestring cardano-crypto
    containers hspec hspec-golden memory pretty-simple QuickCheck text
  ];
  testToolDepends = [ hspec-discover ];
  homepage = "https://github.com/input-output-hk/cardano-addresses#readme";
  description = "Library utilities for mnemonic generation and address derivation";
  license = lib.licenses.asl20;
}
