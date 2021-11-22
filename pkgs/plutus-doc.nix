{ sources }:

{ mkDerivation, aeson, base, bytestring, cardano-api, containers
, doctest, flat, freer-extras, lens, lib, playground-common
, plutus-chain-index, plutus-chain-index-core, plutus-contract
, plutus-core, plutus-ledger, plutus-ledger-api, plutus-tx
, plutus-tx-plugin, plutus-use-cases, prettyprinter, QuickCheck
, random, serialise, template-haskell, text
}:
mkDerivation {
  pname = "plutus-doc";
  version = "0.1.0.0";
  src = "${sources.plutus-apps}/doc";
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    aeson base bytestring cardano-api containers flat freer-extras lens
    playground-common plutus-chain-index plutus-chain-index-core
    plutus-contract plutus-core plutus-ledger plutus-ledger-api
    plutus-tx plutus-tx-plugin plutus-use-cases prettyprinter
    QuickCheck random serialise template-haskell text
  ];
  executableToolDepends = [ doctest ];
  description = "Plutus documentation";
  license = lib.licenses.asl20;
}
