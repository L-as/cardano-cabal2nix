{ sources }:

{ mkDerivation, base, lib }:
mkDerivation {
  pname = "base-deriving-via";
  version = "0.1.0.0";
  src = "${sources.cardano-base}/base-deriving-via";
  libraryHaskellDepends = [ base ];
  description = "A general hook newtype for use with deriving via";
  license = lib.licenses.asl20;
}
