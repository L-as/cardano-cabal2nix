{ sources }:

{ mkDerivation, aeson, aeson-pretty, ansi-terminal, base, bech32
, bech32-th, bytestring, cardano-address, cardano-addresses
, cardano-crypto, code-page, containers, extra, fmt, hjsonschema
, hspec, hspec-discover, lib, mtl, optparse-applicative, process
, QuickCheck, safe, string-interpolate, template-haskell, temporary
, text
}:
mkDerivation {
  pname = "cardano-addresses-cli";
  version = "3.6.0";
  src = "${sources.cardano-addresses}/command-line";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson aeson-pretty ansi-terminal base bech32 bytestring
    cardano-addresses cardano-crypto code-page extra fmt mtl
    optparse-applicative process safe template-haskell text
  ];
  executableHaskellDepends = [ base cardano-addresses ];
  testHaskellDepends = [
    aeson base bech32 bech32-th bytestring cardano-addresses containers
    hjsonschema hspec process QuickCheck string-interpolate temporary
    text
  ];
  testToolDepends = [ cardano-address hspec-discover ];
  homepage = "https://github.com/input-output-hk/cardano-addresses#readme";
  description = "Utils for constructing a command-line on top of cardano-addresses";
  license = lib.licenses.asl20;
}
