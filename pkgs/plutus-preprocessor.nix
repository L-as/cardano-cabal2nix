{ sources }:

{ mkDerivation, base, bytestring, cardano-ledger-alonzo, flat, lib
, plutus-core, plutus-ledger-api, plutus-tx, plutus-tx-plugin
, serialise, template-haskell
}:
mkDerivation {
  pname = "plutus-preprocessor";
  version = "0.1.0.0";
  src = "${sources.cardano-ledger-specs}/libs/plutus-preprocessor";
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    base bytestring cardano-ledger-alonzo flat plutus-core
    plutus-ledger-api plutus-tx plutus-tx-plugin serialise
    template-haskell
  ];
  description = "A preproceesor for creating plutus scripts as bytestrings and equivalents";
  license = lib.licenses.asl20;
}
