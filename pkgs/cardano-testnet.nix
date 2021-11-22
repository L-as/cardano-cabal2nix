{ sources }:

{ mkDerivation, aeson, ansi-terminal, base, base16-bytestring
, bytestring, cardano-api, cardano-cli, cardano-config
, cardano-node, cardano-submit-api, containers, directory
, exceptions, filepath, hedgehog, hedgehog-extras, http-client
, http-types, lib, optparse-applicative, plutus-example
, process, random, resourcet, stm, tasty, tasty-hedgehog, text
, time, unix, unordered-containers, yaml
}:
mkDerivation {
  pname = "cardano-testnet";
  version = "1.30.0";
  src = "${sources.cardano-node}/cardano-testnet";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson base base16-bytestring bytestring containers directory
    exceptions filepath hedgehog hedgehog-extras http-client http-types
    process random resourcet text time unix unordered-containers yaml
  ];
  executableHaskellDepends = [
    ansi-terminal base cardano-config hedgehog hedgehog-extras
    optparse-applicative resourcet stm text
  ];
  testHaskellDepends = [
    aeson base cardano-api containers directory filepath hedgehog
    hedgehog-extras tasty tasty-hedgehog text unordered-containers
  ];
  testToolDepends = [
    cardano-cli cardano-node cardano-submit-api plutus-example
  ];
  license = lib.licenses.asl20;
}
