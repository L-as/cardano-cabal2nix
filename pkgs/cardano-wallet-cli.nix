{ sources }:

{ mkDerivation, aeson, aeson-pretty, ansi-terminal, base
, bytestring, cardano-addresses, cardano-addresses-cli
, cardano-wallet-core, cardano-wallet-test-utils, containers
, directory, filepath, fmt, hspec, hspec-discover, http-client
, iohk-monitoring, lib, optparse-applicative, QuickCheck
, servant-client, servant-client-core, text, text-class, time
, unliftio
}:
mkDerivation {
  pname = "cardano-wallet-cli";
  version = "2021.9.29";
  src = "${sources.cardano-wallet}/lib/cli";
  libraryHaskellDepends = [
    aeson aeson-pretty ansi-terminal base bytestring cardano-addresses
    cardano-addresses-cli cardano-wallet-core directory filepath fmt
    http-client iohk-monitoring optparse-applicative servant-client
    servant-client-core text text-class time unliftio
  ];
  testHaskellDepends = [
    base cardano-wallet-core cardano-wallet-test-utils containers
    filepath hspec optparse-applicative QuickCheck text text-class
    unliftio
  ];
  testToolDepends = [ hspec-discover ];
  homepage = "https://github.com/input-output-hk/cardano-wallet";
  description = "Utilities for a building Command-Line Interfaces";
  license = lib.licenses.asl20;
}
