{ sources }:

{ mkDerivation, base, base16-bytestring, bifunctors, binary
, bytestring, cardano-binary, cardano-crypto-class, cardano-prelude
, cardano-slotting, cborg, containers, contra-tracer, deepseq
, directory, fgl, file-embed, filepath, generics-sop, graphviz
, hashable, io-classes, io-sim, lib, mtl, nothunks
, ouroboros-consensus, ouroboros-consensus-mock, ouroboros-network
, ouroboros-network-framework, pretty-show, QuickCheck
, quickcheck-state-machine, quiet, random, serialise, sop-core
, strict-containers, tasty, tasty-golden, tasty-hunit
, tasty-quickcheck, template-haskell, temporary, text, time
, transformers, tree-diff, typed-protocols, utf8-string, vector
}:
mkDerivation {
  pname = "ouroboros-consensus-test";
  version = "0.1.0.0";
  src = "${sources.ouroboros-network}/ouroboros-consensus-test";
  libraryHaskellDepends = [
    base base16-bytestring bytestring cardano-crypto-class
    cardano-prelude cardano-slotting cborg containers contra-tracer
    deepseq directory fgl file-embed filepath generics-sop graphviz
    io-classes io-sim mtl nothunks ouroboros-consensus
    ouroboros-network ouroboros-network-framework QuickCheck
    quickcheck-state-machine quiet random serialise sop-core
    strict-containers tasty tasty-golden tasty-quickcheck
    template-haskell text time transformers tree-diff typed-protocols
    utf8-string
  ];
  testHaskellDepends = [
    base bifunctors binary bytestring cardano-binary
    cardano-crypto-class cardano-slotting cborg containers
    contra-tracer directory generics-sop hashable io-classes io-sim mtl
    nothunks ouroboros-consensus ouroboros-consensus-mock
    ouroboros-network ouroboros-network-framework pretty-show
    QuickCheck quickcheck-state-machine quiet random serialise sop-core
    strict-containers tasty tasty-hunit tasty-quickcheck temporary text
    time transformers tree-diff typed-protocols vector
  ];
  description = "Tests of the consensus layer";
  license = lib.licenses.asl20;
}
