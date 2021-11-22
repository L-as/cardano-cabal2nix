{ sources }:

{ mkDerivation, base, bytestring, cardano-api, cardano-cli
, cardano-config, cardano-ledger-byron, cardano-node
, cardano-prelude, cardano-testnet, containers, contra-tracer
, filepath, hedgehog, hedgehog-extras, io-classes, lib, network
, network-mux, optparse-applicative, ouroboros-consensus
, ouroboros-network, ouroboros-network-framework, process, random
, resourcet, tasty, tasty-hedgehog, text, time, unliftio
}:
mkDerivation {
  pname = "cardano-node-chairman";
  version = "1.30.0";
  src = "${sources.cardano-node}/cardano-node-chairman";
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    base bytestring cardano-api cardano-config cardano-ledger-byron
    cardano-node cardano-prelude containers contra-tracer io-classes
    network-mux optparse-applicative ouroboros-consensus
    ouroboros-network ouroboros-network-framework text time
  ];
  testHaskellDepends = [
    base cardano-testnet filepath hedgehog hedgehog-extras network
    process random resourcet tasty tasty-hedgehog unliftio
  ];
  testToolDepends = [ cardano-cli cardano-node ];
  license = lib.licenses.asl20;
}
