{ sources }:

{ mkDerivation, base, cardano-ledger-shelley-test, lib }:
mkDerivation {
  pname = "shelley-spec-ledger-test";
  version = "0.1.0.0";
  src = "${sources.cardano-ledger-specs}/eras/shelley/chain-and-ledger/shelley-spec-ledger-test";
  libraryHaskellDepends = [ base cardano-ledger-shelley-test ];
  license = lib.licenses.asl20;
}
