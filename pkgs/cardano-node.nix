{ sources }:

{ mkDerivation, aeson, async, base, base16-bytestring, bytestring
, cardano-api, cardano-config, cardano-crypto-class
, cardano-crypto-wrapper, cardano-ledger-alonzo
, cardano-ledger-byron, cardano-ledger-core, cardano-ledger-shelley
, cardano-ledger-shelley-ma, cardano-prelude
, cardano-protocol-tpraos, cardano-slotting, cborg, containers
, contra-tracer, deepseq, directory, dns, ekg, ekg-core, filepath
, generic-data, hedgehog, hedgehog-corpus, hostname, io-classes
, iohk-monitoring, iproute, lib, lobemo-backend-aggregation
, lobemo-backend-ekg, lobemo-backend-monitoring
, lobemo-backend-trace-forwarder, lobemo-scribe-systemd, network
, network-mux, nothunks, optparse-applicative
, ouroboros-consensus, ouroboros-consensus-byron
, ouroboros-consensus-cardano, ouroboros-consensus-shelley
, ouroboros-network, ouroboros-network-framework, process, psqueues
, safe-exceptions, scientific, small-steps, stm, systemd, text
, time, tracer-transformers, transformers, transformers-except
, typed-protocols, unix, unordered-containers, yaml
}:
mkDerivation {
  pname = "cardano-node";
  version = "1.31.0";
  src = "${sources.cardano-node}/cardano-node";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson async base base16-bytestring bytestring cardano-api
    cardano-config cardano-crypto-class cardano-crypto-wrapper
    cardano-ledger-alonzo cardano-ledger-byron cardano-ledger-core
    cardano-ledger-shelley cardano-ledger-shelley-ma cardano-prelude
    cardano-protocol-tpraos cardano-slotting cborg containers
    contra-tracer deepseq directory dns ekg ekg-core filepath
    generic-data hostname io-classes iohk-monitoring iproute
    lobemo-backend-aggregation lobemo-backend-ekg
    lobemo-backend-monitoring lobemo-backend-trace-forwarder
    lobemo-scribe-systemd network network-mux nothunks
    optparse-applicative ouroboros-consensus
    ouroboros-consensus-byron ouroboros-consensus-cardano
    ouroboros-consensus-shelley ouroboros-network
    ouroboros-network-framework process psqueues safe-exceptions
    scientific small-steps stm systemd text time tracer-transformers
    transformers transformers-except typed-protocols unix
    unordered-containers yaml
  ];
  executableHaskellDepends = [
    base cardano-config cardano-prelude optparse-applicative text
  ];
  testHaskellDepends = [
    aeson base cardano-api cardano-prelude cardano-slotting directory
    hedgehog hedgehog-corpus iproute ouroboros-consensus
    ouroboros-network time unix
  ];
  license = lib.licenses.asl20;
}
