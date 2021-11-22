{ sources }:

{ mkDerivation, base, base16-bytestring, bytestring, cardano-binary
, cardano-crypto-class, cardano-ledger-core, cardano-ledger-shelley
, cardano-prelude, cardano-protocol-tpraos, cardano-slotting, cborg
, containers, data-default-class, deepseq, groups, lib, mtl
, nothunks, primitive, small-steps, strict-containers, text
, transformers
}:
mkDerivation {
  pname = "cardano-ledger-shelley-ma";
  version = "0.1.0.0";
  src = "${sources.cardano-ledger-specs}/eras/shelley-ma/impl";
  libraryHaskellDepends = [
    base base16-bytestring bytestring cardano-binary
    cardano-crypto-class cardano-ledger-core cardano-ledger-shelley
    cardano-prelude cardano-protocol-tpraos cardano-slotting cborg
    containers data-default-class deepseq groups mtl nothunks primitive
    small-steps strict-containers text transformers
  ];
  description = "Shelley ledger with multiasset and time lock support";
  license = lib.licenses.asl20;
}
