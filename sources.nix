{ fetchFromGitHub }:

{
  cardano-node = fetchFromGitHub {
    owner = "input-output-hk";
    repo = "cardano-node";
    rev = "5939f8084cfdf5ec017542034d981bb75879fed6";
    sha256 = "0000000000000000000000000000000000000000000000000000";
  };
  cardano-base = fetchFromGitHub {
    owner = "input-output-hk";
    repo = "cardano-base";
    rev = "12a58616587689ae725708ffba40a36b57273e91";
    sha256 = "0000000000000000000000000000000000000000000000000000";
  };
  cardano-prelude = fetchFromGitHub {
    owner = "input-output-hk";
    repo = "cardano-prelude";
    rev = "c7fc9fba236972c27a55e0f3d34c2758cf616bfc";
    sha256 = "k6+WBI8WV00goFjDZT0851GZfV8zJldsYa5jFy2E4Wk=";
  };
  cardano-ledger-specs = fetchFromGitHub {
    owner = "input-output-hk";
    repo = "cardano-ledger-specs";
    rev = "45e402646e99e3c44720a2f9bc1938a11200e8df";
    sha256 = "0000000000000000000000000000000000000000000000000000";
  };
  plutus = fetchFromGitHub {
    owner = "input-output-hk";
    repo = "plutus";
    rev = "57f9020817d1ffd4d8a99cb8ae8dd9c5fd6c1e02";
    sha256 = "0000000000000000000000000000000000000000000000000000";
  };
  plutus-apps = fetchFromGitHub {
    owner = "input-output-hk";
    repo = "plutus-apps";
    rev = "7333e3c3ae62c955c5db7799dbf1c1f58593325d";
    sha256 = "0000000000000000000000000000000000000000000000000000";
  };
}
