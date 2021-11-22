{ sources }:

{ mkDerivation, base, containers, lib, plutus-core, plutus-tx
, plutus-tx-plugin, prettyprinter, template-haskell, th-abstraction
}:
mkDerivation {
  pname = "plutus-errors";
  version = "0.1.0.0";
  src = "${sources.plutus}/plutus-errors";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    base containers plutus-core plutus-tx plutus-tx-plugin
    prettyprinter template-haskell th-abstraction
  ];
  executableHaskellDepends = [
    base containers plutus-core prettyprinter template-haskell
    th-abstraction
  ];
  description = "The error codes of the Plutus compiler & runtime";
  license = lib.licenses.asl20;
}
