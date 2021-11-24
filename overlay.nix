{ fetchFromGitHub, lib, hlib, libsodium }:

let
  sources = import ./sources.nix { inherit fetchFromGitHub; };
  overlay1 = final: prev: {
    dns = final.callPackage (import ./deps/dns.nix { inherit lib; }) {};
    unliftio-core = final.callPackage (import ./deps/unliftio-core.nix { inherit lib; }) {};
    #aeson_1_4_7_1 = final.callPackage (import ./deps/aeson-1.4.nix { inherit lib; }) {};

    ral_0_1 = hlib.overrideCabal (_: {
      dontCheck = true;
      version = "0.1";
      sha256 = "BIzytbOUIpUDvddIyTzBllC0Ij0B4R6VSzc/dZXCEkE=";
    }) final.ral;

    streaming-binary_0_2 = hlib.overrideCabal (_: {
      version = "0.2.2.0";
      sha256 = "z9CQA5Y0tloQJDAOyR9W89bT3HfNOuI40l1EL9jZPOE=";
    }) final.streaming-binary;

    network = final.network_3_1_2_5;

    cardano-address = null;

    # FIXME: tests
    bech32 = hlib.dontCheck prev.bech32;
    bech32-th = hlib.dontCheck prev.bech32-th;
    async-timer = hlib.dontCheck prev.async-timer;
    ouroboros-network = hlib.dontCheck prev.ouroboros-network;
    OddWord = hlib.dontCheck prev.OddWord;
    hs-rqlite = hlib.dontCheck prev.hs-rqlite;
    canonical-json = hlib.overrideCabal (_: { doCheck = false; broken = false; }) prev.canonical-json;
    gray-code = hlib.overrideCabal (o: {
      doCheck = false;
      postPatch = ''
        rm Setup.hs
      '';
    }) prev.gray-code;
    # FIXME: tests
    moo = hlib.dontCheck prev.moo;
    # FIXME: tests
    cardano-crypto-tests = hlib.dontCheck prev.cardano-crypto-tests;

    # there's a hackage package named libsodium...
    libsodium = builtins.throw "override me";

    cardano-crypto-class = prev.cardano-crypto-class.override {
      inherit libsodium;
    };
    cardano-crypto-praos = prev.cardano-crypto-praos.override {
      inherit libsodium;
    };
    plutus-core = prev.plutus-core.override {
      ral = final.ral_0_1;
    };
    cardano-ledger-byron = hlib.dontCheck (prev.cardano-ledger-byron.override {
      streaming-binary = final.streaming-binary_0_2;
    });
  };
  overlay2 = final: _: (import ./pkgs.nix { inherit sources; }) final;
  overlay = lib.composeExtensions overlay2 overlay1;
in
overlay
