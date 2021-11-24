{ fetchFromGitHub, lib, hlib, libsodium }:

let
  sources = import ./sources.nix { inherit fetchFromGitHub; };
  overlay1 = final: prev: {
    canonical-json = hlib.overrideCabal (_: { doCheck = false; broken = false; }) prev.canonical-json;
    flat = prev.flat.overrideAttrs (_: {
      src = fetchFromGitHub {
        owner = "Quid2";
        repo = "flat";
        rev = "ee59880f47ab835dbd73bea0847dab7869fc20d8";
        sha256 = "0000000000000000000000000000000000000000000000000000";
      };
    });
    purescript-bridge = prev.purescript-bridge.overrideAttrs (_: {
      src = fetchFromGitHub {
        owner = "input-output-hk";
        repo = "purescript-bridge";
        rev = "6a92d7853ea514be8b70bab5e72077bf5a510596";
        sha256 = "0000000000000000000000000000000000000000000000000000";
      };
    });
    servant-purescript = prev.servant-purescript.overrideAttrs (_: {
      src = fetchFromGitHub {
        owner = "input-output-hk";
        repo = "servant-purescript";
        rev = "a0c7c7e37c95564061247461aef4be505a853538";
        sha256 = "0000000000000000000000000000000000000000000000000000";
      };
    });

    dns = final.callPackage (import ./deps/dns.nix { inherit lib; }) {};
    unliftio-core = final.callPackage (import ./deps/unliftio-core.nix { inherit lib; }) {};
    #aeson_1_4_7_1 = final.callPackage (import ./deps/aeson-1.4.nix { inherit lib; }) {};

    network = final.network_3_1_2_5;

    cardano-address = null;

    # FIXME: tests
    bech32 = hlib.dontCheck prev.bech32;
    bech32-th = hlib.dontCheck prev.bech32-th;
    async-timer = hlib.dontCheck prev.async-timer;
    ouroboros-network = hlib.dontCheck prev.ouroboros-network;
    OddWord = hlib.dontCheck prev.OddWord;
    hs-rqlite = hlib.dontCheck prev.hs-rqlite;
    gray-code = hlib.overrideCabal (o: {
      doCheck = false;
      postPatch = ''
        rm Setup.hs
      '';
    }) prev.gray-code;
    # FIXME: tests
    moo = hlib.dontCheck prev.moo;

    cardano-crypto-class = prev.cardano-crypto-class.override {
      inherit libsodium; # there's a hackage package named libsodium...
    };
  };
  overlay2 = final: _: (import ./pkgs.nix { inherit sources; }) final;
  overlay = lib.composeExtensions overlay2 overlay1;
in
overlay
