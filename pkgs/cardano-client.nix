{ sources }:

{ mkDerivation, base, bytestring, containers, io-classes, lib
, network-mux, ouroboros-consensus, ouroboros-network
, ouroboros-network-framework
}:
mkDerivation {
  pname = "cardano-client";
  version = "0.1.0.0";
  src = "${sources.ouroboros-network}/cardano-client";
  libraryHaskellDepends = [
    base bytestring containers io-classes network-mux
    ouroboros-consensus ouroboros-network ouroboros-network-framework
  ];
  description = "An API for ouroboros-network";
  license = lib.licenses.asl20;
}
