{ sources }:

{ mkDerivation, aeson, aeson-pretty, async, attoparsec, base
, bytestring, cardano-api, cardano-binary, cardano-cli
, cardano-crypto-class, cardano-crypto-wrapper
, cardano-ledger-byron, cardano-ledger-shelley, cardano-node
, cardano-prelude, cborg, constraints-extras, containers
, contra-tracer, dependent-map, dependent-sum
, dependent-sum-template, extra, formatting, generic-monoid
, ghc-prim, hedgehog, heredoc, io-classes, iohk-monitoring
, ixset-typed, lib, network, network-mux, optparse-applicative
, ouroboros-consensus, ouroboros-consensus-byron
, ouroboros-consensus-cardano, ouroboros-consensus-shelley
, ouroboros-network, ouroboros-network-framework, random, serialise
, stm, tasty, tasty-hedgehog, tasty-hunit, text, time, transformers
, transformers-except, unordered-containers
}:
mkDerivation {
  pname = "tx-generator";
  version = "1.30";
  src = "${sources.cardano-node}/bench/tx-generator";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson aeson-pretty async attoparsec base bytestring cardano-api
    cardano-binary cardano-cli cardano-crypto-class
    cardano-crypto-wrapper cardano-ledger-byron cardano-ledger-shelley
    cardano-node cardano-prelude cborg constraints-extras containers
    contra-tracer dependent-map dependent-sum dependent-sum-template
    extra formatting generic-monoid ghc-prim io-classes iohk-monitoring
    ixset-typed network network-mux optparse-applicative
    ouroboros-consensus ouroboros-consensus-byron
    ouroboros-consensus-cardano ouroboros-consensus-shelley
    ouroboros-network ouroboros-network-framework random serialise stm
    text time transformers transformers-except unordered-containers
  ];
  executableHaskellDepends = [ base ];
  testHaskellDepends = [
    base hedgehog heredoc optparse-applicative tasty
    tasty-hedgehog tasty-hunit
  ];
  license = lib.licenses.asl20;
}
