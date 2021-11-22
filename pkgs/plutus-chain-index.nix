{ sources }:

{ mkDerivation, aeson, base, beam-migrate, beam-sqlite, cardano-api
, containers, contra-tracer, freer-extras, freer-simple
, iohk-monitoring, lens, lib, optparse-applicative
, ouroboros-network, plutus-chain-index-core, plutus-ledger
, plutus-ledger-api, prettyprinter, sqlite-simple, stm, yaml
}:
mkDerivation {
  pname = "plutus-chain-index";
  version = "0.1.0.0";
  src = "${sources.plutus-apps}/plutus-chain-index";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson base beam-migrate beam-sqlite cardano-api containers
    contra-tracer freer-extras freer-simple iohk-monitoring lens
    optparse-applicative ouroboros-network plutus-chain-index-core
    plutus-ledger plutus-ledger-api prettyprinter sqlite-simple stm
    yaml
  ];
  executableHaskellDepends = [ base ];
  homepage = "https://github.com/iohk/plutus#readme";
  license = lib.licenses.asl20;
}
