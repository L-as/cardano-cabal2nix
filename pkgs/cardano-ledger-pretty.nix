{ sources }:

{ mkDerivation, base, bech32, bytestring, cardano-crypto-class
, cardano-ledger-alonzo, cardano-ledger-byron, cardano-ledger-core
, cardano-ledger-shelley, cardano-ledger-shelley-ma
, cardano-protocol-tpraos, cardano-slotting, containers, iproute
, lib, mtl, plutus-ledger-api, prettyprinter, small-steps
, strict-containers, text
}:
mkDerivation {
  pname = "cardano-ledger-pretty";
  version = "0.1.0.0";
  src = "${sources.cardano-ledger-specs}/libs/cardano-ledger-pretty";
  libraryHaskellDepends = [
    base bech32 bytestring cardano-crypto-class cardano-ledger-alonzo
    cardano-ledger-byron cardano-ledger-core cardano-ledger-shelley
    cardano-ledger-shelley-ma cardano-protocol-tpraos cardano-slotting
    containers iproute mtl plutus-ledger-api prettyprinter small-steps
    strict-containers text
  ];
  license = lib.licenses.asl20;
}
