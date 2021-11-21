{ fetchFromGitHub }:

self: {
  flat_cardano = self.flat.overrideAttrs (_: {
    src = fetchFromGitHub {
      owner = "Quid2";
      repo = "flat";
      rev = "ee59880f47ab835dbd73bea0847dab7869fc20d8";
      sha256 = "0000000000000000000000000000000000000000000000000000";
    };
  });
  purescript-bridge_cardano = self.purescript-bridge.overrideAttrs (_: {
    src = fetchFromGitHub {
      owner = "input-output-hk";
      repo = "purescript-bridge";
      rev = "6a92d7853ea514be8b70bab5e72077bf5a510596";
      sha256 = "0000000000000000000000000000000000000000000000000000";
    };
  });
  servant-purescript_cardano = self.servant-purescript.overrideAttrs (_: {
    src = fetchFromGitHub {
      owner = "input-output-hk";
      repo = "servant-purescript";
      rev = "a0c7c7e37c95564061247461aef4be505a853538";
      sha256 = "0000000000000000000000000000000000000000000000000000";
    };
  });
  optparse-applicative_cardano = self.optparse-applicative.overrideAttrs (_: {
    src = fetchFromGitHub {
      owner = "input-output-hk";
      repo = "optparse-applicative";
      rev = "a0c7c7e37c95564061247461aef4be505a853538";
      sha256 = "0000000000000000000000000000000000000000000000000000";
    };
  });
  base-deriving-via = self.callPackage ./pkgs/base-deriving-via.nix {};
  cardano-addresses = self.callPackage ./pkgs/cardano-addresses.nix {};
  cardano-api = self.callPackage ./pkgs/cardano-api.nix {};
  cardano-binary = self.callPackage ./pkgs/cardano-binary.nix {};
  cardano-cli = self.callPackage ./pkgs/cardano-cli.nix {};
  cardano-crypto-class = self.callPackage ./pkgs/cardano-crypto-class.nix {};
  cardano-crypto-praos = self.callPackage ./pkgs/cardano-crypto-praos.nix {};
  cardano-crypto = self.callPackage ./pkgs/cardano-crypto.nix {};
  cardano-ledger-alonzo = self.callPackage ./pkgs/cardano-ledger-alonzo.nix {};
  cardano-ledger-byron = self.callPackage ./pkgs/cardano-ledger-byron.nix {};
  cardano-ledger-core = self.callPackage ./pkgs/cardano-ledger-core.nix {};
  cardano-ledger-shelley-ma = self.callPackage ./pkgs/cardano-ledger-shelley-ma.nix {};
  cardano-ledger-shelley = self.callPackage ./pkgs/cardano-ledger-shelley.nix {};
  cardano-ledger-specs = self.callPackage ./pkgs/cardano-ledger-specs.nix {};
  cardano-node = self.callPackage ./pkgs/cardano-node.nix {};
  cardano-prelude = self.callPackage ./pkgs/cardano-prelude.nix {};
  cardano-protocol-tpraos = self.callPackage ./pkgs/cardano-protocol-tpraos.nix {};
  cardano-slotting = self.callPackage ./pkgs/cardano-slotting.nix {};
  cardano-submit-api = self.callPackage ./pkgs/cardano-submit-api.nix {};
  cardano-testnet = self.callPackage ./pkgs/cardano-testnet.nix {};
  cardano-wallet-core-integration = self.callPackage ./pkgs/cardano-wallet-core-integration.nix {};
  cardano-wallet-core = self.callPackage ./pkgs/cardano-wallet-core.nix {};
  cardano-wallet-launcher = self.callPackage ./pkgs/cardano-wallet-launcher.nix {};
  cardano-wallet = self.callPackage ./pkgs/cardano-wallet.nix {};
  freer-extras = self.callPackage ./pkgs/freer-extras.nix {};
  iohk-monitoring-framework = self.callPackage ./pkgs/iohk-monitoring-framework.nix {};
  measures = self.callPackage ./pkgs/measures.nix {};
  non-integral = self.callPackage ./pkgs/non-integral.nix {};
  orphans-deriving-via = self.callPackage ./pkgs/orphans-deriving-via.nix {};
  ouroboros-network = self.callPackage ./pkgs/ouroboros-network.nix {};
  playground-common = self.callPackage ./pkgs/playground-common.nix {};
  plutus-benchmark = self.callPackage ./pkgs/plutus-benchmark.nix {};
  plutus-chain-index-core = self.callPackage ./pkgs/plutus-chain-index-core.nix {};
  plutus-chain-index = self.callPackage ./pkgs/plutus-chain-index.nix {};
  plutus-contract = self.callPackage ./pkgs/plutus-contract.nix {};
  plutus-core = self.callPackage ./pkgs/plutus-core.nix {};
  plutus-doc = self.callPackage ./pkgs/plutus-doc.nix {};
  plutus-errors = self.callPackage ./pkgs/plutus-errors.nix {};
  plutus-ledger-api = self.callPackage ./pkgs/plutus-ledger-api.nix {};
  plutus-ledger = self.callPackage ./pkgs/plutus-ledger.nix {};
  plutus-metatheory = self.callPackage ./pkgs/plutus-metatheory.nix {};
  plutus-pab = self.callPackage ./pkgs/plutus-pab.nix {};
  plutus-playground-server = self.callPackage ./pkgs/plutus-playground-server.nix {};
  plutus-preprocessor = self.callPackage ./pkgs/plutus-preprocessor.nix {};
  plutus-tx-plugin = self.callPackage ./pkgs/plutus-tx-plugin.nix {};
  plutus-tx = self.callPackage ./pkgs/plutus-tx.nix {};
  plutus-use-cases = self.callPackage ./pkgs/plutus-use-cases.nix {};
  prettyprinter-configurable = self.callPackage ./pkgs/prettyprinter-configurable.nix {};
  quickcheck-dynamic = self.callPackage ./pkgs/quickcheck-dynamic.nix {};
  small-steps = self.callPackage ./pkgs/small-steps.nix {};
  strict-containers = self.callPackage ./pkgs/strict-containers.nix {};
  word-array = self.callPackage ./pkgs/word-array.nix {};
}
