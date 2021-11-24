{ sources }:

self: {
  # Win32-network
  Win32-network = self.callPackage (import ./pkgs/Win32-network.nix { inherit sources; }) {};

  # cardano-addresses
  cardano-addresses-cli = self.callPackage (import ./pkgs/cardano-addresses-cli.nix { inherit sources; }) {};
  cardano-addresses = self.callPackage (import ./pkgs/cardano-addresses.nix { inherit sources; }) {};
  cardano-addresses-jsapi = self.callPackage (import ./pkgs/cardano-addresses-jsapi.nix { inherit sources; }) {};
  cardano-addresses-jsbits = self.callPackage (import ./pkgs/cardano-addresses-jsbits.nix { inherit sources; }) {};

  # cardano-base
  base-deriving-via = self.callPackage (import ./pkgs/base-deriving-via.nix { inherit sources; }) {};
  cardano-binary = self.callPackage (import ./pkgs/cardano-binary.nix { inherit sources; }) {};
  cardano-binary-test = self.callPackage (import ./pkgs/cardano-binary-test.nix { inherit sources; }) {};
  cardano-crypto-class = self.callPackage (import ./pkgs/cardano-crypto-class.nix { inherit sources; }) {};
  cardano-crypto-praos = self.callPackage (import ./pkgs/cardano-crypto-praos.nix { inherit sources; }) {};
  cardano-crypto-tests = self.callPackage (import ./pkgs/cardano-crypto-tests.nix { inherit sources; }) {};
  measures = self.callPackage (import ./pkgs/measures.nix { inherit sources; }) {};
  orphans-deriving-via = self.callPackage (import ./pkgs/orphans-deriving-via.nix { inherit sources; }) {};
  cardano-slotting = self.callPackage (import ./pkgs/cardano-slotting.nix { inherit sources; }) {};
  strict-containers = self.callPackage (import ./pkgs/strict-containers.nix { inherit sources; }) {};

  # cardano-crypto
  cardano-crypto = self.callPackage (import ./pkgs/cardano-crypto.nix { inherit sources; }) {};

  # cardano-ledger-specs
  cardano-ledger-alonzo = self.callPackage (import ./pkgs/cardano-ledger-alonzo.nix { inherit sources; }) {};
  cardano-ledger-alonzo-test = self.callPackage (import ./pkgs/cardano-ledger-alonzo-test.nix { inherit sources; }) {};
  byron-spec-chain = self.callPackage (import ./pkgs/byron-spec-chain.nix { inherit sources; }) {};
  cardano-crypto-wrapper = self.callPackage (import ./pkgs/cardano-crypto-wrapper.nix { inherit sources; }) {};
  cardano-crypto-test = self.callPackage (import ./pkgs/cardano-crypto-test.nix { inherit sources; }) {};
  byron-spec-ledger = self.callPackage (import ./pkgs/byron-spec-ledger.nix { inherit sources; }) {};
  cardano-ledger-byron = self.callPackage (import ./pkgs/cardano-ledger-byron.nix { inherit sources; }) {};
  cardano-ledger-byron-test = self.callPackage (import ./pkgs/cardano-ledger-byron-test.nix { inherit sources; }) {};
  cardano-ledger-shelley-ma = self.callPackage (import ./pkgs/cardano-ledger-shelley-ma.nix { inherit sources; }) {};
  cardano-ledger-shelley-ma-test = self.callPackage (import ./pkgs/cardano-ledger-shelley-ma-test.nix { inherit sources; }) {};
  shelley-spec-non-integral = self.callPackage (import ./pkgs/shelley-spec-non-integral.nix { inherit sources; }) {};
  shelley-spec-ledger = self.callPackage (import ./pkgs/shelley-spec-ledger.nix { inherit sources; }) {};
  shelley-spec-ledger-test = self.callPackage (import ./pkgs/shelley-spec-ledger-test.nix { inherit sources; }) {};
  cardano-ledger-shelley = self.callPackage (import ./pkgs/cardano-ledger-shelley.nix { inherit sources; }) {};
  cardano-ledger-shelley-test = self.callPackage (import ./pkgs/cardano-ledger-shelley-test.nix { inherit sources; }) {};
  cardano-ledger-core = self.callPackage (import ./pkgs/cardano-ledger-core.nix { inherit sources; }) {};
  cardano-ledger-example-shelley = self.callPackage (import ./pkgs/cardano-ledger-example-shelley.nix { inherit sources; }) {};
  cardano-ledger-pretty = self.callPackage (import ./pkgs/cardano-ledger-pretty.nix { inherit sources; }) {};
  cardano-ledger-test = self.callPackage (import ./pkgs/cardano-ledger-test.nix { inherit sources; }) {};
  cardano-protocol-tpraos = self.callPackage (import ./pkgs/cardano-protocol-tpraos.nix { inherit sources; }) {};
  non-integral = self.callPackage (import ./pkgs/non-integral.nix { inherit sources; }) {};
  plutus-preprocessor = self.callPackage (import ./pkgs/plutus-preprocessor.nix { inherit sources; }) {};
  small-steps-test = self.callPackage (import ./pkgs/small-steps-test.nix { inherit sources; }) {};
  small-steps = self.callPackage (import ./pkgs/small-steps.nix { inherit sources; }) {};

  # cardano-node
  cardano-topology = self.callPackage (import ./pkgs/cardano-topology.nix { inherit sources; }) {};
  locli = self.callPackage (import ./pkgs/locli.nix { inherit sources; }) {};
  tx-generator = self.callPackage (import ./pkgs/tx-generator.nix { inherit sources; }) {};
  cardano-api = self.callPackage (import ./pkgs/cardano-api.nix { inherit sources; }) {};
  cardano-cli = self.callPackage (import ./pkgs/cardano-cli.nix { inherit sources; }) {};
  cardano-client-demo = self.callPackage (import ./pkgs/cardano-client-demo.nix { inherit sources; }) {};
  cardano-config = self.callPackage (import ./pkgs/cardano-config.nix { inherit sources; }) {};
  cardano-node-chairman = self.callPackage (import ./pkgs/cardano-node-chairman.nix { inherit sources; }) {};
  cardano-node = self.callPackage (import ./pkgs/cardano-node.nix { inherit sources; }) {};
  cardano-submit-api = self.callPackage (import ./pkgs/cardano-submit-api.nix { inherit sources; }) {};
  cardano-testnet = self.callPackage (import ./pkgs/cardano-testnet.nix { inherit sources; }) {};
  plutus-example = self.callPackage (import ./pkgs/plutus-example.nix { inherit sources; }) {};
  trace-dispatcher = self.callPackage (import ./pkgs/trace-dispatcher.nix { inherit sources; }) {};
  trace-forward = self.callPackage (import ./pkgs/trace-forward.nix { inherit sources; }) {};
  trace-resources = self.callPackage (import ./pkgs/trace-resources.nix { inherit sources; }) {};

  # cardano-prelude
  cardano-prelude-test = self.callPackage (import ./pkgs/cardano-prelude-test.nix { inherit sources; }) {};
  cardano-prelude = self.callPackage (import ./pkgs/cardano-prelude.nix { inherit sources; }) {};

  # cardano-sl-x509
  cardano-sl-x509 = self.callPackage (import ./pkgs/cardano-sl-x509.nix { inherit sources; }) {};

  # cardano-wallet
  cardano-wallet-cli = self.callPackage (import ./pkgs/cardano-wallet-cli.nix { inherit sources; }) {};
  cardano-wallet-core-integration = self.callPackage (import ./pkgs/cardano-wallet-core-integration.nix { inherit sources; }) {};
  cardano-wallet-core = self.callPackage (import ./pkgs/cardano-wallet-core.nix { inherit sources; }) {};
  cardano-wallet-launcher = self.callPackage (import ./pkgs/cardano-wallet-launcher.nix { inherit sources; }) {};
  cardano-numeric = self.callPackage (import ./pkgs/cardano-numeric.nix { inherit sources; }) {};
  cardano-wallet = self.callPackage (import ./pkgs/cardano-wallet.nix { inherit sources; }) {};
  strict-non-empty-containers = self.callPackage (import ./pkgs/strict-non-empty-containers.nix { inherit sources; }) {};
  cardano-wallet-test-utils = self.callPackage (import ./pkgs/cardano-wallet-test-utils.nix { inherit sources; }) {};
  text-class = self.callPackage (import ./pkgs/text-class.nix { inherit sources; }) {};

  # ekg-forward
  ekg-forward = self.callPackage (import ./pkgs/ekg-forward.nix { inherit sources; }) {};

  # flat
  flat = self.callPackage (import ./pkgs/flat.nix { inherit sources; }) {};

  # goblins
  goblins = self.callPackage (import ./pkgs/goblins.nix { inherit sources; }) {};

  # hedgehog-extras
  hedgehog-extras = self.callPackage (import ./pkgs/hedgehog-extras.nix { inherit sources; }) {};

  # http-client
  http-client-openssl = self.callPackage (import ./pkgs/http-client-openssl.nix { inherit sources; }) {};
  http-client-tls = self.callPackage (import ./pkgs/http-client-tls.nix { inherit sources; }) {};
  http-client = self.callPackage (import ./pkgs/http-client.nix { inherit sources; }) {};
  publicsuffixlist = self.callPackage (import ./pkgs/publicsuffixlist.nix { inherit sources; }) {};
  http-conduit = self.callPackage (import ./pkgs/http-conduit.nix { inherit sources; }) {};

  # iohk-monitoring-framework
  contra-tracer = self.callPackage (import ./pkgs/contra-tracer.nix { inherit sources; }) {};
  lobemo-examples = self.callPackage (import ./pkgs/lobemo-examples.nix { inherit sources; }) {};
  iohk-monitoring = self.callPackage (import ./pkgs/iohk-monitoring.nix { inherit sources; }) {};
  lobemo-backend-aggregation = self.callPackage (import ./pkgs/lobemo-backend-aggregation.nix { inherit sources; }) {};
  lobemo-backend-editor = self.callPackage (import ./pkgs/lobemo-backend-editor.nix { inherit sources; }) {};
  lobemo-backend-ekg = self.callPackage (import ./pkgs/lobemo-backend-ekg.nix { inherit sources; }) {};
  lobemo-backend-graylog = self.callPackage (import ./pkgs/lobemo-backend-graylog.nix { inherit sources; }) {};
  lobemo-backend-kafka = self.callPackage (import ./pkgs/lobemo-backend-kafka.nix { inherit sources; }) {};
  lobemo-backend-monitoring = self.callPackage (import ./pkgs/lobemo-backend-monitoring.nix { inherit sources; }) {};
  lobemo-backend-trace-acceptor = self.callPackage (import ./pkgs/lobemo-backend-trace-acceptor.nix { inherit sources; }) {};
  lobemo-backend-trace-forwarder = self.callPackage (import ./pkgs/lobemo-backend-trace-forwarder.nix { inherit sources; }) {};
  lobemo-scribe-systemd = self.callPackage (import ./pkgs/lobemo-scribe-systemd.nix { inherit sources; }) {};
  tracer-transformers = self.callPackage (import ./pkgs/tracer-transformers.nix { inherit sources; }) {};

  # optparse-applicative
  optparse-applicative-fork = self.callPackage (import ./pkgs/optparse-applicative-fork.nix { inherit sources; }) {};

  # ouroboros-network
  cardano-client = self.callPackage (import ./pkgs/cardano-client.nix { inherit sources; }) {};
  io-classes = self.callPackage (import ./pkgs/io-classes.nix { inherit sources; }) {};
  io-sim = self.callPackage (import ./pkgs/io-sim.nix { inherit sources; }) {};
  monoidal-synchronisation = self.callPackage (import ./pkgs/monoidal-synchronisation.nix { inherit sources; }) {};
  network-mux = self.callPackage (import ./pkgs/network-mux.nix { inherit sources; }) {};
  ntp-client = self.callPackage (import ./pkgs/ntp-client.nix { inherit sources; }) {};
  ouroboros-consensus-byron-test = self.callPackage (import ./pkgs/ouroboros-consensus-byron-test.nix { inherit sources; }) {};
  ouroboros-consensus-byron = self.callPackage (import ./pkgs/ouroboros-consensus-byron.nix { inherit sources; }) {};
  ouroboros-consensus-byronspec = self.callPackage (import ./pkgs/ouroboros-consensus-byronspec.nix { inherit sources; }) {};
  ouroboros-consensus-cardano-test = self.callPackage (import ./pkgs/ouroboros-consensus-cardano-test.nix { inherit sources; }) {};
  ouroboros-consensus-cardano = self.callPackage (import ./pkgs/ouroboros-consensus-cardano.nix { inherit sources; }) {};
  ouroboros-consensus-mock-test = self.callPackage (import ./pkgs/ouroboros-consensus-mock-test.nix { inherit sources; }) {};
  ouroboros-consensus-mock = self.callPackage (import ./pkgs/ouroboros-consensus-mock.nix { inherit sources; }) {};
  ouroboros-consensus-shelley-test = self.callPackage (import ./pkgs/ouroboros-consensus-shelley-test.nix { inherit sources; }) {};
  ouroboros-consensus-shelley = self.callPackage (import ./pkgs/ouroboros-consensus-shelley.nix { inherit sources; }) {};
  ouroboros-consensus-test = self.callPackage (import ./pkgs/ouroboros-consensus-test.nix { inherit sources; }) {};
  unsoundswitch = self.callPackage (import ./pkgs/unsoundswitch.nix { inherit sources; }) {};
  ouroboros-consensus = self.callPackage (import ./pkgs/ouroboros-consensus.nix { inherit sources; }) {};
  ouroboros-network-framework = self.callPackage (import ./pkgs/ouroboros-network-framework.nix { inherit sources; }) {};
  ouroboros-network-testing = self.callPackage (import ./pkgs/ouroboros-network-testing.nix { inherit sources; }) {};
  ouroboros-network = self.callPackage (import ./pkgs/ouroboros-network.nix { inherit sources; }) {};
  typed-protocols-cborg = self.callPackage (import ./pkgs/typed-protocols-cborg.nix { inherit sources; }) {};
  typed-protocols-examples = self.callPackage (import ./pkgs/typed-protocols-examples.nix { inherit sources; }) {};
  typed-protocols = self.callPackage (import ./pkgs/typed-protocols.nix { inherit sources; }) {};

  # plutus
  fomega = self.callPackage (import ./pkgs/fomega.nix { inherit sources; }) {};
  UTxO = self.callPackage (import ./pkgs/UTxO.nix { inherit sources; }) {};
  representation = self.callPackage (import ./pkgs/representation.nix { inherit sources; }) {};
  plutus-benchmark = self.callPackage (import ./pkgs/plutus-benchmark.nix { inherit sources; }) {};
  plutus-core = self.callPackage (import ./pkgs/plutus-core.nix { inherit sources; }) {};
  plutus-errors = self.callPackage (import ./pkgs/plutus-errors.nix { inherit sources; }) {};
  plutus-ledger-api = self.callPackage (import ./pkgs/plutus-ledger-api.nix { inherit sources; }) {};
  plutus-metatheory = self.callPackage (import ./pkgs/plutus-metatheory.nix { inherit sources; }) {};
  plutus-tx-plugin = self.callPackage (import ./pkgs/plutus-tx-plugin.nix { inherit sources; }) {};
  plutus-tx = self.callPackage (import ./pkgs/plutus-tx.nix { inherit sources; }) {};
  prettyprinter-configurable = self.callPackage (import ./pkgs/prettyprinter-configurable.nix { inherit sources; }) {};
  plutus-ghc-stub = self.callPackage (import ./pkgs/plutus-ghc-stub.nix { inherit sources; }) {};
  word-array = self.callPackage (import ./pkgs/word-array.nix { inherit sources; }) {};

  # plutus-apps
  freer-extras = self.callPackage (import ./pkgs/freer-extras.nix { inherit sources; }) {};
  playground-common = self.callPackage (import ./pkgs/playground-common.nix { inherit sources; }) {};
  plutus-chain-index-core = self.callPackage (import ./pkgs/plutus-chain-index-core.nix { inherit sources; }) {};
  plutus-chain-index = self.callPackage (import ./pkgs/plutus-chain-index.nix { inherit sources; }) {};
  plutus-contract = self.callPackage (import ./pkgs/plutus-contract.nix { inherit sources; }) {};
  plutus-ledger = self.callPackage (import ./pkgs/plutus-ledger.nix { inherit sources; }) {};
  plutus-pab = self.callPackage (import ./pkgs/plutus-pab.nix { inherit sources; }) {};
  plutus-playground-server = self.callPackage (import ./pkgs/plutus-playground-server.nix { inherit sources; }) {};
  plutus-use-cases = self.callPackage (import ./pkgs/plutus-use-cases.nix { inherit sources; }) {};
  quickcheck-dynamic = self.callPackage (import ./pkgs/quickcheck-dynamic.nix { inherit sources; }) {};
  web-ghc = self.callPackage (import ./pkgs/web-ghc.nix { inherit sources; }) {};

  # purescript-bridge
  purescript-bridge = self.callPackage (import ./pkgs/purescript-bridge.nix { inherit sources; }) {};

  # servant-purescript
  servant-purescript = self.callPackage (import ./pkgs/servant-purescript.nix { inherit sources; }) {};

}
