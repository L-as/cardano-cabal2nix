{ sources }:

{ mkDerivation, aeson, base, base16-bytestring, bytestring
, cardano-binary, cardano-crypto, cardano-crypto-class
, cardano-crypto-wrapper, cardano-ledger-byron, cardano-ledger-core
, cardano-prelude, cardano-protocol-tpraos, cardano-slotting, cborg
, constraints, containers, data-default-class, deepseq, groups
, iproute, lib, mtl, nothunks, primitive, quiet, small-steps
, strict-containers, text, time, transformers
}:
mkDerivation {
  pname = "cardano-ledger-shelley";
  version = "0.1.0.0";
  src = "${sources.cardano-ledger-specs}/eras/shelley/impl";
  libraryHaskellDepends = [
    aeson base base16-bytestring bytestring cardano-binary
    cardano-crypto cardano-crypto-class cardano-crypto-wrapper
    cardano-ledger-byron cardano-ledger-core cardano-prelude
    cardano-protocol-tpraos cardano-slotting cborg constraints
    containers data-default-class deepseq groups iproute mtl nothunks
    primitive quiet small-steps strict-containers text time
    transformers
  ];
  license = lib.licenses.asl20;
}
