{ sources }:

{ mkDerivation, aeson, base, bytestring, cardano-binary
, cardano-crypto-class, cardano-crypto-wrapper
, cardano-ledger-alonzo, cardano-ledger-byron, cardano-ledger-core
, cardano-ledger-shelley, cardano-ledger-shelley-ma
, cardano-prelude, cardano-slotting, cborg, containers
, contra-tracer, lib, mtl, nothunks, optparse-applicative
, ouroboros-consensus, ouroboros-consensus-byron
, ouroboros-consensus-shelley, ouroboros-network, plutus-ledger-api
, serialise, strict-containers, text, these
}:
mkDerivation {
  pname = "ouroboros-consensus-cardano";
  version = "0.1.0.0";
  src = "${sources.ouroboros-network}/ouroboros-consensus-cardano";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    base bytestring cardano-binary cardano-crypto-class
    cardano-ledger-alonzo cardano-ledger-byron cardano-ledger-core
    cardano-ledger-shelley cardano-ledger-shelley-ma cardano-prelude
    cardano-slotting cborg containers mtl nothunks ouroboros-consensus
    ouroboros-consensus-byron ouroboros-consensus-shelley
    ouroboros-network these
  ];
  executableHaskellDepends = [
    aeson base bytestring cardano-binary cardano-crypto-wrapper
    cardano-ledger-alonzo cardano-ledger-byron cardano-ledger-core
    cardano-ledger-shelley cborg containers contra-tracer mtl
    optparse-applicative ouroboros-consensus ouroboros-consensus-byron
    ouroboros-consensus-shelley ouroboros-network plutus-ledger-api
    serialise strict-containers text
  ];
  description = "The instantation of the Ouroboros consensus layer used by Cardano";
  license = lib.licenses.asl20;
}
