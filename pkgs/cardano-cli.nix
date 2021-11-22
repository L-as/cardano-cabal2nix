{ sources }:

{ mkDerivation, aeson, aeson-pretty, ansi-terminal, attoparsec
, base, base16-bytestring, bech32, binary, bytestring, cardano-api
, cardano-binary, cardano-config, cardano-crypto
, cardano-crypto-class, cardano-crypto-wrapper
, cardano-ledger-alonzo, cardano-ledger-byron, cardano-ledger-core
, cardano-ledger-shelley, cardano-ledger-shelley-ma, cardano-node
, cardano-prelude, cardano-protocol-tpraos, cardano-slotting, cborg
, containers, contra-tracer, cryptonite, Diff, directory
, exceptions, filepath, formatting, hedgehog, hedgehog-extras
, iproute, lib, network, optparse-applicative
, ouroboros-consensus, ouroboros-consensus-byron
, ouroboros-consensus-cardano, ouroboros-consensus-shelley
, ouroboros-network, parsec, plutus-ledger-api, prettyprinter
, small-steps, split, strict-containers, text, time, transformers
, transformers-except, unix, unordered-containers, utf8-string
, vector, yaml
}:
mkDerivation {
  pname = "cardano-cli";
  version = "1.30.0";
  src = "${sources.cardano-node}/cardano-cli";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson aeson-pretty ansi-terminal attoparsec base base16-bytestring
    bech32 binary bytestring cardano-api cardano-binary cardano-config
    cardano-crypto cardano-crypto-class cardano-crypto-wrapper
    cardano-ledger-alonzo cardano-ledger-byron cardano-ledger-core
    cardano-ledger-shelley cardano-ledger-shelley-ma cardano-prelude
    cardano-protocol-tpraos cardano-slotting cborg containers
    contra-tracer cryptonite directory filepath formatting iproute
    network optparse-applicative ouroboros-consensus
    ouroboros-consensus-byron ouroboros-consensus-cardano
    ouroboros-consensus-shelley ouroboros-network parsec
    plutus-ledger-api prettyprinter small-steps split strict-containers
    text time transformers transformers-except unix utf8-string vector
    yaml
  ];
  executableHaskellDepends = [
    base cardano-crypto-class cardano-prelude optparse-applicative
    transformers-except unix
  ];
  testHaskellDepends = [
    aeson base base16-bytestring bech32 bytestring cardano-api
    cardano-crypto-wrapper cardano-ledger-byron cardano-node
    cardano-prelude cardano-slotting cborg containers Diff directory
    exceptions filepath hedgehog hedgehog-extras parsec text time
    transformers unordered-containers yaml
  ];
  license = lib.licenses.asl20;
}
