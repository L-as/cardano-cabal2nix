{ sources }:

{ mkDerivation, base, bytestring, cardano-binary, cardano-crypto
, cardano-crypto-class, cardano-crypto-wrapper
, cardano-ledger-byron, cardano-prelude, cardano-slotting, cborg
, containers, cryptonite, directory, filepath, formatting, lib, mtl
, nothunks, optparse-generic, ouroboros-consensus
, ouroboros-network, resourcet, serialise, streaming, text
}:
mkDerivation {
  pname = "ouroboros-consensus-byron";
  version = "0.1.0.0";
  src = "${sources.ouroboros-network}/ouroboros-consensus-byron";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    base bytestring cardano-binary cardano-crypto cardano-crypto-class
    cardano-crypto-wrapper cardano-ledger-byron cardano-prelude
    cardano-slotting cborg containers cryptonite formatting mtl
    nothunks ouroboros-consensus ouroboros-network serialise text
  ];
  executableHaskellDepends = [
    base bytestring cardano-binary cardano-ledger-byron directory
    filepath mtl optparse-generic ouroboros-consensus ouroboros-network
    resourcet streaming text
  ];
  description = "Byron ledger integration in the Ouroboros consensus layer";
  license = lib.licenses.asl20;
}
