{ sources }:

{ mkDerivation, base, bytestring, cardano-wallet-test-utils
, code-page, contra-tracer, either, extra, filepath, fmt, hspec
, hspec-core, hspec-discover, hspec-expectations, iohk-monitoring
, lib, process, retry, text, text-class, time, unix, unliftio
, unliftio-core
}:
mkDerivation {
  pname = "cardano-wallet-launcher";
  version = "2021.9.29";
  src = "${sources.cardano-wallet}/lib/launcher";
  libraryHaskellDepends = [
    base bytestring code-page contra-tracer either extra filepath fmt
    iohk-monitoring process text text-class unix unliftio unliftio-core
  ];
  testHaskellDepends = [
    base bytestring cardano-wallet-test-utils contra-tracer fmt hspec
    hspec-core hspec-expectations iohk-monitoring process retry text
    text-class time unliftio
  ];
  testToolDepends = [ hspec-discover ];
  homepage = "https://github.com/input-output-hk/cardano-wallet";
  description = "Utilities for a building commands launcher";
  license = lib.licenses.asl20;
}
