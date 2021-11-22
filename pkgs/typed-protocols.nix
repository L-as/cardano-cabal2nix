{ sources }:

{ mkDerivation, base, io-classes, lib }:
mkDerivation {
  pname = "typed-protocols";
  version = "0.1.0.0";
  src = "${sources.ouroboros-network}/typed-protocols";
  libraryHaskellDepends = [ base io-classes ];
  description = "A framework for strongly typed protocols";
  license = lib.licenses.asl20;
}
