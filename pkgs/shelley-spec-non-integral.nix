{ sources }:

{ mkDerivation, base, lib, non-integral }:
mkDerivation {
  pname = "shelley-spec-non-integral";
  version = "0.1.0.0";
  src = "${sources.cardano-ledger-specs}/eras/shelley/chain-and-ledger/dependencies/non-integer";
  libraryHaskellDepends = [ base non-integral ];
  license = lib.licenses.asl20;
}
