{ sources }:

{ mkDerivation, base, lib }:
mkDerivation {
  pname = "cardano-addresses-jsbits";
  version = "3.6.0";
  src = "${sources.cardano-addresses}/jsbits";
  libraryHaskellDepends = [ base ];
  homepage = "https://github.com/input-output-hk/cardano-addresses#readme";
  description = "Javascript code for ghcjs build of cardano-addresses";
  license = lib.licenses.asl20;
}
