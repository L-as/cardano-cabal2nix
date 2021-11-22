{ sources }:

{ mkDerivation, aeson, base, bytestring, containers, graphviz, lib
, optparse-applicative, split, text
}:
mkDerivation {
  pname = "cardano-topology";
  version = "1.30.0";
  src = "${sources.cardano-node}/bench/cardano-topology";
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    aeson base bytestring containers graphviz optparse-applicative
    split text
  ];
  license = lib.licenses.asl20;
}
