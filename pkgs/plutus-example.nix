{ sources }:

{ mkDerivation, aeson, base, bytestring, cardano-api, cardano-cli
, cardano-ledger-alonzo, cardano-ledger-core
, cardano-ledger-shelley, cardano-prelude, cardano-protocol-tpraos
, cardano-slotting, containers, directory, filepath, hedgehog, lib
, optparse-applicative, ouroboros-consensus, ouroboros-network
, plutus-ledger, plutus-ledger-api, plutus-tx, plutus-tx-plugin
, serialise, strict-containers, transformers, transformers-except
}:
mkDerivation {
  pname = "plutus-example";
  version = "1.30.0";
  src = "${sources.cardano-node}/plutus-example/plutus-example";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson base bytestring cardano-api cardano-cli cardano-ledger-alonzo
    cardano-ledger-core cardano-ledger-shelley cardano-protocol-tpraos
    cardano-slotting containers ouroboros-consensus ouroboros-network
    plutus-ledger plutus-ledger-api plutus-tx plutus-tx-plugin
    serialise strict-containers transformers transformers-except
  ];
  executableHaskellDepends = [
    base bytestring cardano-api directory filepath optparse-applicative
    transformers
  ];
  testHaskellDepends = [
    aeson base cardano-api cardano-ledger-alonzo cardano-ledger-core
    cardano-ledger-shelley cardano-prelude containers hedgehog
    plutus-ledger plutus-ledger-api
  ];
  license = lib.licenses.asl20;
}
