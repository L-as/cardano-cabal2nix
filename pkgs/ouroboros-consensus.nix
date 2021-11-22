{ sources }:

{ mkDerivation, base, base-deriving-via, base16-bytestring, bimap
, binary, bytestring, cardano-binary, cardano-crypto-class
, cardano-prelude, cardano-slotting, cborg, containers
, contra-tracer, deepseq, digest, directory, filelock, filepath
, hashable, io-classes, lib, measures, mtl, network-mux, nothunks
, ouroboros-network, ouroboros-network-framework, psqueues, quiet
, random, semialign, serialise, sop-core, stm, streaming
, strict-containers, text, these, time, transformers
, typed-protocols, unix, unix-bytestring, vector
}:
mkDerivation {
  pname = "ouroboros-consensus";
  version = "0.1.0.0";
  src = "${sources.ouroboros-network}/ouroboros-consensus";
  libraryHaskellDepends = [
    base base-deriving-via base16-bytestring bimap binary bytestring
    cardano-binary cardano-crypto-class cardano-prelude
    cardano-slotting cborg containers contra-tracer deepseq digest
    directory filelock filepath hashable io-classes measures mtl
    network-mux nothunks ouroboros-network ouroboros-network-framework
    psqueues quiet random semialign serialise sop-core stm streaming
    strict-containers text these time transformers typed-protocols unix
    unix-bytestring vector
  ];
  description = "Consensus layer for the Ouroboros blockchain protocol";
  license = lib.licenses.asl20;
}
