{ sources }:

{ mkDerivation, aeson, aeson-qq, base, base58-bytestring, bech32
, bech32-th, bytestring, cardano-addresses, cardano-api
, cardano-crypto, cardano-crypto-class, cardano-ledger-alonzo
, cardano-ledger-core, cardano-wallet-cli, cardano-wallet-core
, cardano-wallet-launcher, cardano-wallet-test-utils, cborg
, command, containers, criterion-measurement, cryptonite, deepseq
, directory, either, extra, filepath, fmt, generic-lens
, generic-lens-core, hspec, hspec-expectations-lifted
, http-api-data, http-client, http-types, HUnit, iohk-monitoring
, lens-aeson, lib, memory, microstache, network-uri
, optparse-applicative, process, resourcet, retry, say, scrypt
, string-interpolate, template-haskell, text, text-class, time
, unliftio, unliftio-core, unordered-containers
}:
mkDerivation {
  pname = "cardano-wallet-core-integration";
  version = "2021.9.29";
  src = "${sources.cardano-wallet}/lib/core-integration";
  libraryHaskellDepends = [
    aeson aeson-qq base base58-bytestring bech32 bech32-th bytestring
    cardano-addresses cardano-api cardano-crypto cardano-crypto-class
    cardano-ledger-alonzo cardano-ledger-core cardano-wallet-cli
    cardano-wallet-core cardano-wallet-launcher
    cardano-wallet-test-utils cborg command containers
    criterion-measurement cryptonite deepseq directory either extra
    filepath fmt generic-lens generic-lens-core hspec
    hspec-expectations-lifted http-api-data http-client http-types
    HUnit iohk-monitoring lens-aeson memory microstache network-uri
    optparse-applicative process resourcet retry say scrypt
    string-interpolate template-haskell text text-class time unliftio
    unliftio-core unordered-containers
  ];
  homepage = "https://github.com/input-output-hk/cardano-wallet";
  description = "Core integration test library";
  license = lib.licenses.asl20;
}
