{ sources }:

{ mkDerivation, aeson, aeson-pretty, base, bytestring
, cardano-addresses, cardano-addresses-cli, exceptions, jsaddle
, jsaddle-warp, lens, lib, mtl, text
}:
mkDerivation {
  pname = "cardano-addresses-jsapi";
  version = "3.6.0";
  src = "${sources.cardano-addresses}/jsapi";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson aeson-pretty base bytestring cardano-addresses
    cardano-addresses-cli exceptions jsaddle lens mtl text
  ];
  testHaskellDepends = [ base jsaddle jsaddle-warp lens text ];
  homepage = "https://github.com/input-output-hk/cardano-addresses#readme";
  description = "Javascript FFI for cardano-addresses";
  license = lib.licenses.asl20;
}
