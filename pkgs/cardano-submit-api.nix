{ sources }:

{ mkDerivation, aeson, async, base, bytestring, cardano-api
, cardano-binary, cardano-crypto-class, cardano-ledger-byron
, formatting, http-media, iohk-monitoring, lib, mtl, network
, optparse-applicative, ouroboros-consensus-cardano
, ouroboros-network, prometheus, protolude, servant, servant-server
, streaming-commons, text, transformers-except, warp, yaml
}:
mkDerivation {
  pname = "cardano-submit-api";
  version = "3.1.2";
  src = "${sources.cardano-node}/cardano-submit-api";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson async base bytestring cardano-api cardano-binary
    cardano-crypto-class cardano-ledger-byron formatting http-media
    iohk-monitoring mtl network optparse-applicative
    ouroboros-consensus-cardano ouroboros-network prometheus protolude
    servant servant-server streaming-commons text transformers-except
    warp yaml
  ];
  executableHaskellDepends = [ base optparse-applicative ];
  testHaskellDepends = [ base ];
  homepage = "https://github.com/input-output-hk/cardano-node";
  description = "A web server that allows transactions to be POSTed to the cardano chain";
  license = lib.licenses.asl20;
}
