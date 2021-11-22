{ sources }:

{ mkDerivation, aeson, aeson-pretty, base, bytestring, cardano-api
, cardano-crypto, cardano-wallet-core, containers, cryptonite
, data-default, deepseq, directory, extensible-effects, filepath
, flat, foldl, freer-extras, freer-simple, hashable, hedgehog
, IntervalMap, lens, lib, memory, mmorph, mtl, openapi3
, plutus-chain-index-core, plutus-core, plutus-ledger
, plutus-ledger-api, plutus-tx, plutus-tx-plugin, prettyprinter
, profunctors, QuickCheck, quickcheck-dynamic, row-types
, semigroupoids, serialise, servant, streaming, tasty, tasty-golden
, tasty-hedgehog, tasty-hunit, tasty-quickcheck, template-haskell
, text, text-class, transformers, unordered-containers, uuid
}:
mkDerivation {
  pname = "plutus-contract";
  version = "0.1.0.0";
  src = "${sources.plutus-apps}/plutus-contract";
  libraryHaskellDepends = [
    aeson aeson-pretty base bytestring cardano-api cardano-crypto
    cardano-wallet-core containers cryptonite data-default deepseq
    directory filepath flat foldl freer-extras freer-simple hashable
    hedgehog IntervalMap lens memory mmorph mtl openapi3
    plutus-chain-index-core plutus-core plutus-ledger plutus-ledger-api
    plutus-tx plutus-tx-plugin prettyprinter profunctors QuickCheck
    quickcheck-dynamic row-types semigroupoids serialise servant
    streaming tasty tasty-golden tasty-hunit template-haskell text
    text-class transformers unordered-containers uuid
  ];
  testHaskellDepends = [
    aeson base bytestring cardano-api containers data-default
    extensible-effects freer-extras freer-simple hedgehog lens mtl
    plutus-chain-index-core plutus-ledger plutus-ledger-api plutus-tx
    plutus-tx-plugin QuickCheck row-types semigroupoids tasty
    tasty-golden tasty-hedgehog tasty-hunit tasty-quickcheck text
    transformers
  ];
  homepage = "https://github.com/iohk/plutus#readme";
  license = lib.licenses.asl20;
}
