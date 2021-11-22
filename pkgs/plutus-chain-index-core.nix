{ sources }:

{ mkDerivation, aeson, base, beam-core, beam-migrate, beam-sqlite
, bytestring, cardano-api, cardano-ledger-byron, containers
, contra-tracer, cryptonite, data-default, exceptions, fingertree
, freer-extras, freer-simple, hedgehog, http-types, io-classes
, iohk-monitoring, lens, lib, memory, mtl, nothunks
, ouroboros-consensus, ouroboros-consensus-byron
, ouroboros-consensus-cardano, ouroboros-consensus-shelley
, ouroboros-network, ouroboros-network-framework, plutus-ledger
, plutus-ledger-api, plutus-tx, prettyprinter, retry, semigroups
, serialise, servant, servant-client, servant-client-core
, servant-server, sqlite-simple, stm, tasty, tasty-hedgehog, text
, text-class, typed-protocols, unordered-containers, warp
}:
mkDerivation {
  pname = "plutus-chain-index-core";
  version = "0.1.0.0";
  src = "${sources.plutus-apps}/plutus-chain-index-core";
  libraryHaskellDepends = [
    aeson base beam-core beam-migrate beam-sqlite bytestring
    cardano-api cardano-ledger-byron containers contra-tracer
    cryptonite data-default exceptions fingertree freer-extras
    freer-simple http-types io-classes iohk-monitoring lens memory mtl
    nothunks ouroboros-consensus ouroboros-consensus-byron
    ouroboros-consensus-cardano ouroboros-consensus-shelley
    ouroboros-network ouroboros-network-framework plutus-ledger
    plutus-ledger-api plutus-tx prettyprinter retry semigroups
    serialise servant servant-client servant-client-core servant-server
    sqlite-simple stm text text-class typed-protocols
    unordered-containers warp
  ];
  testHaskellDepends = [
    base beam-migrate beam-sqlite bytestring containers contra-tracer
    data-default fingertree freer-extras freer-simple hedgehog lens
    plutus-ledger plutus-ledger-api plutus-tx serialise sqlite-simple
    stm tasty tasty-hedgehog
  ];
  homepage = "https://github.com/iohk/plutus#readme";
  license = lib.licenses.asl20;
}
