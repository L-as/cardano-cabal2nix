{ sources }:

{ mkDerivation, aeson, base, base16-bytestring, binary, bytestring
, cardano-binary, cardano-crypto-class, cardano-crypto-praos
, cardano-crypto-wrapper, cardano-ledger-byron, cardano-prelude
, cardano-slotting, compact-map, containers, data-default-class
, deepseq, groups, iproute, lib, mtl, network, non-integral
, nothunks, partial-order, primitive, quiet, scientific
, small-steps, strict-containers, text, time, transformers
}:
mkDerivation {
  pname = "cardano-ledger-core";
  version = "0.1.0.0";
  src = "${sources.cardano-ledger-specs}/libs/cardano-ledger-core";
  libraryHaskellDepends = [
    aeson base base16-bytestring binary bytestring cardano-binary
    cardano-crypto-class cardano-crypto-praos cardano-crypto-wrapper
    cardano-ledger-byron cardano-prelude cardano-slotting compact-map
    containers data-default-class deepseq groups iproute mtl network
    non-integral nothunks partial-order primitive quiet scientific
    small-steps strict-containers text time transformers
  ];
  description = "Core components of Cardano ledgers from the Shelley release on";
  license = lib.licenses.asl20;
}
