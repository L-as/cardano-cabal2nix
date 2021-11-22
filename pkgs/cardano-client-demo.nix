{ sources }:

{ mkDerivation, aeson, base, base16-bytestring, bech32, binary
, bytestring, cardano-api, cardano-binary, cardano-crypto-class
, cardano-crypto-wrapper, cardano-ledger-byron, cardano-ledger-core
, cardano-ledger-shelley, cardano-node, cardano-slotting
, containers, cryptonite, filepath, iohk-monitoring, lib, memory
, mtl, optparse-applicative, ouroboros-consensus
, ouroboros-consensus-byron, ouroboros-consensus-cardano
, ouroboros-consensus-shelley, ouroboros-network, sop-core, text
, time, transformers, transformers-except, typed-protocols, yaml
}:
mkDerivation {
  pname = "cardano-client-demo";
  version = "0.1.0.0";
  src = "${sources.cardano-node}/cardano-client-demo";
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    aeson base base16-bytestring bech32 binary bytestring cardano-api
    cardano-binary cardano-crypto-class cardano-crypto-wrapper
    cardano-ledger-byron cardano-ledger-core cardano-ledger-shelley
    cardano-node cardano-slotting containers cryptonite filepath
    iohk-monitoring memory mtl optparse-applicative ouroboros-consensus
    ouroboros-consensus-byron ouroboros-consensus-cardano
    ouroboros-consensus-shelley ouroboros-network sop-core text time
    transformers transformers-except typed-protocols yaml
  ];
  description = "A simple demo cardano-node client application";
  license = lib.licenses.asl20;
}
