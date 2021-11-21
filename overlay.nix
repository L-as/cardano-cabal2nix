{ fetchFromGitHub, lib }:

let
  sources = import ./sources.nix { inherit fetchFromGitHub; };
in
self: super: {
  canonical-json = lib.overrideCabal (_: { doCheck = false; broken = false; }) super.canonical-json;
  flat = super.flat.overrideAttrs (_: {
    src = fetchFromGitHub {
      owner = "Quid2";
      repo = "flat";
      rev = "ee59880f47ab835dbd73bea0847dab7869fc20d8";
      sha256 = "0000000000000000000000000000000000000000000000000000";
    };
  });
  purescript-bridge = super.purescript-bridge.overrideAttrs (_: {
    src = fetchFromGitHub {
      owner = "input-output-hk";
      repo = "purescript-bridge";
      rev = "6a92d7853ea514be8b70bab5e72077bf5a510596";
      sha256 = "0000000000000000000000000000000000000000000000000000";
    };
  });
  servant-purescript = super.servant-purescript.overrideAttrs (_: {
    src = fetchFromGitHub {
      owner = "input-output-hk";
      repo = "servant-purescript";
      rev = "a0c7c7e37c95564061247461aef4be505a853538";
      sha256 = "0000000000000000000000000000000000000000000000000000";
    };
  });

  # iohk-monitoring-framework
  contra-tracer = self.callPackage (import ./pkgs/contra-tracer.nix { inherit sources; }) {};
  iohk-monitoring = self.callPackage (import ./pkgs/iohk-monitoring.nix { inherit sources; }) {};
  lobemo-backend-trace-forwarder = self.callPackage (import ./pkgs/lobemo-backedn-trace-forwarder.nix { inherit sources; }) {};
  lobemo-backend-aggregation = self.callPackage (import ./pkgs/lobemo-backend-aggregation.nix { inherit sources; }) {};
  lobemo-backend-editor = self.callPackage (import ./pkgs/lobemo-backend-editor.nix { inherit sources; }) {};
  lobemo-backend-ekg = self.callPackage (import ./pkgs/lobemo-backend-ekg.nix { inherit sources; }) {};
  lobemo-backend-graylog = self.callPackage (import ./pkgs/lobemo-backend-graylog.nix { inherit sources; }) {};
  lobemo-backend-monitoring = self.callPackage (import ./pkgs/lobemo-backend-monitoring.nix { inherit sources; }) {};
  lobemo-backend-trace-acceptor = self.callPackage (import ./pkgs/lobemo-backend-trace-acceptor.nix { inherit sources; }) {};
  lobemo-scribe-systemd = self.callPackage (import ./pkgs/lobemo-scribe-systemd.nix { inherit sources; }) {};
  tracer-transformers = self.callPackage (import ./pkgs/tracer-transformers.nix { inherit sources; }) {};

  # ouroboros-network
  cardano-client = self.callPackage (import ./pkgs/cardano-client.nix { inherit sources; }) {};
  io-classes = self.callPackage (import ./pkgs/io-classes.nix { inherit sources; }) {};
  io-sim = self.callPackage (import ./pkgs/io-sim.nix { inherit sources; }) {};
  monoidal-synchronisation = self.callPackage (import ./pkgs/monoidal-synchronisation.nix { inherit sources; }) {};
  network-mux = self.callPackage (import ./pkgs/network-mux.nix { inherit sources; }) {};
  ntp-client = self.callPackage (import ./pkgs/ntp-client.nix { inherit sources; }) {};
  ouroboros-consensus-byron = self.callPackage (import ./pkgs/ouroboros-consensus-byron.nix { inherit sources; }) {};
  ouroboros-consensus-cardano = self.callPackage (import ./pkgs/ouroboros-consensus-cardano.nix { inherit sources; }) {};
  ouroboros-consensus = self.callPackage (import ./pkgs/ouroboros-consensus.nix { inherit sources; }) {};
  ouroboros-consensus-shelley = self.callPackage (import ./pkgs/ouroboros-consensus-shelley.nix { inherit sources; }) {};
  ouroboros-network-framework = self.callPackage (import ./pkgs/ouroboros-network-framework.nix { inherit sources; }) {};
  ouroboros-network = self.callPackage (import ./pkgs/ouroboros-network.nix { inherit sources; }) {};
  typed-protocols = self.callPackage (import ./pkgs/typed-protocols.nix { inherit sources; }) {};


  base-deriving-via = self.callPackage (import ./pkgs/base-deriving-via.nix { inherit sources; }) {};
  cardano-addresses = self.callPackage (import ./pkgs/cardano-addresses.nix { inherit sources; }) {};
  cardano-api = self.callPackage (import ./pkgs/cardano-api.nix { inherit sources; }) {};
  cardano-binary = self.callPackage (import ./pkgs/cardano-binary.nix { inherit sources; }) {};
  cardano-cli = self.callPackage (import ./pkgs/cardano-cli.nix { inherit sources; }) {};
  cardano-config = self.callPackage (import ./pkgs/cardano-config.nix { inherit sources; }) {};
  cardano-crypto-class = self.callPackage (import ./pkgs/cardano-crypto-class.nix { inherit sources; }) {};
  cardano-crypto-wrapper = self.callPackage (import ./pkgs/cardano-crypto-wrapper.nix { inherit sources; }) {};
  cardano-crypto-praos = self.callPackage (import ./pkgs/cardano-crypto-praos.nix { inherit sources; }) {};
  cardano-crypto = self.callPackage (import ./pkgs/cardano-crypto.nix { inherit sources; }) {};
  cardano-ledger-alonzo = self.callPackage (import ./pkgs/cardano-ledger-alonzo.nix { inherit sources; }) {};
  cardano-ledger-byron = self.callPackage (import ./pkgs/cardano-ledger-byron.nix { inherit sources; }) {};
  cardano-ledger-core = self.callPackage (import ./pkgs/cardano-ledger-core.nix { inherit sources; }) {};
  cardano-ledger-shelley-ma = self.callPackage (import ./pkgs/cardano-ledger-shelley-ma.nix { inherit sources; }) {};
  cardano-ledger-shelley = self.callPackage (import ./pkgs/cardano-ledger-shelley.nix { inherit sources; }) {};
  cardano-ledger-specs = self.callPackage (import ./pkgs/cardano-ledger-specs.nix { inherit sources; }) {};
  cardano-node = self.callPackage (import ./pkgs/cardano-node.nix { inherit sources; }) {};
  cardano-prelude = self.callPackage (import ./pkgs/cardano-prelude.nix { inherit sources; }) {};
  cardano-protocol-tpraos = self.callPackage (import ./pkgs/cardano-protocol-tpraos.nix { inherit sources; }) {};
  cardano-slotting = self.callPackage (import ./pkgs/cardano-slotting.nix { inherit sources; }) {};
  cardano-submit-api = self.callPackage (import ./pkgs/cardano-submit-api.nix { inherit sources; }) {};
  cardano-testnet = self.callPackage (import ./pkgs/cardano-testnet.nix { inherit sources; }) {};
  cardano-wallet-core-integration = self.callPackage (import ./pkgs/cardano-wallet-core-integration.nix { inherit sources; }) {};
  cardano-wallet-core = self.callPackage (import ./pkgs/cardano-wallet-core.nix { inherit sources; }) {};
  cardano-wallet-launcher = self.callPackage (import ./pkgs/cardano-wallet-launcher.nix { inherit sources; }) {};
  cardano-wallet = self.callPackage (import ./pkgs/cardano-wallet.nix { inherit sources; }) {};
  freer-extras = self.callPackage (import ./pkgs/freer-extras.nix { inherit sources; }) {};
  measures = self.callPackage (import ./pkgs/measures.nix { inherit sources; }) {};
  non-integral = self.callPackage (import ./pkgs/non-integral.nix { inherit sources; }) {};
  orphans-deriving-via = self.callPackage (import ./pkgs/orphans-deriving-via.nix { inherit sources; }) {};
  playground-common = self.callPackage (import ./pkgs/playground-common.nix { inherit sources; }) {};
  plutus-benchmark = self.callPackage (import ./pkgs/plutus-benchmark.nix { inherit sources; }) {};
  plutus-chain-index-core = self.callPackage (import ./pkgs/plutus-chain-index-core.nix { inherit sources; }) {};
  plutus-chain-index = self.callPackage (import ./pkgs/plutus-chain-index.nix { inherit sources; }) {};
  plutus-contract = self.callPackage (import ./pkgs/plutus-contract.nix { inherit sources; }) {};
  plutus-core = self.callPackage (import ./pkgs/plutus-core.nix { inherit sources; }) {};
  plutus-doc = self.callPackage (import ./pkgs/plutus-doc.nix { inherit sources; }) {};
  plutus-errors = self.callPackage (import ./pkgs/plutus-errors.nix { inherit sources; }) {};
  plutus-ledger-api = self.callPackage (import ./pkgs/plutus-ledger-api.nix { inherit sources; }) {};
  plutus-ledger = self.callPackage (import ./pkgs/plutus-ledger.nix { inherit sources; }) {};
  plutus-metatheory = self.callPackage (import ./pkgs/plutus-metatheory.nix { inherit sources; }) {};
  plutus-pab = self.callPackage (import ./pkgs/plutus-pab.nix { inherit sources; }) {};
  plutus-playground-server = self.callPackage (import ./pkgs/plutus-playground-server.nix { inherit sources; }) {};
  plutus-preprocessor = self.callPackage (import ./pkgs/plutus-preprocessor.nix { inherit sources; }) {};
  plutus-tx-plugin = self.callPackage (import ./pkgs/plutus-tx-plugin.nix { inherit sources; }) {};
  plutus-tx = self.callPackage (import ./pkgs/plutus-tx.nix { inherit sources; }) {};
  plutus-use-cases = self.callPackage (import ./pkgs/plutus-use-cases.nix { inherit sources; }) {};
  prettyprinter-configurable = self.callPackage (import ./pkgs/prettyprinter-configurable.nix { inherit sources; }) {};
  quickcheck-dynamic = self.callPackage (import ./pkgs/quickcheck-dynamic.nix { inherit sources; }) {};
  small-steps = self.callPackage (import ./pkgs/small-steps.nix { inherit sources; }) {};
  strict-containers = self.callPackage (import ./pkgs/strict-containers.nix { inherit sources; }) {};
  word-array = self.callPackage (import ./pkgs/word-array.nix { inherit sources; }) {};
}
