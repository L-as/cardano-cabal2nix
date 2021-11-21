{ fetchFromGitHub, lib }:

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
}
