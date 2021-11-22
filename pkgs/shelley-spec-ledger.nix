{ sources }:

{ mkDerivation, base, cardano-ledger-core, cardano-ledger-shelley
, cardano-protocol-tpraos, lib
}:
mkDerivation {
  pname = "shelley-spec-ledger";
  version = "0.1.0.0";
  src = "${sources.cardano-ledger-specs}/eras/shelley/chain-and-ledger/executable-spec";
  libraryHaskellDepends = [
    base cardano-ledger-core cardano-ledger-shelley
    cardano-protocol-tpraos
  ];
  license = lib.licenses.asl20;
}
