{ fetchFromGitHub }:

# NB: plutus-apps's cabal.project
# WARNING: for ^, stack.yaml is often out of date
{
  cardano-node = fetchFromGitHub {
    owner = "input-output-hk";
    repo = "cardano-node";
    rev = "b6ca519f97a0e795611a63174687e6bb70c9f752";
    sha256 = "0000000000000000000000000000000000000000000000000000";
  };
  cardano-base = fetchFromGitHub {
    owner = "input-output-hk";
    repo = "cardano-base";
    rev = "4ea7e2d927c9a7f78ddc69738409a5827ab66b98";
    sha256 = "zbjq43Bnhv1/LhJCFlI8gdd61dGvVlkEa6wkCvLqEFg=";
  };
  cardano-prelude = fetchFromGitHub {
    owner = "input-output-hk";
    repo = "cardano-prelude";
    rev = "fd773f7a58412131512b9f694ab95653ac430852";
    sha256 = "k6+WBI8WV00goFjDZT0851GZfV8zJldsYa5jFy2E4Wk=";
  };
  cardano-ledger-specs = fetchFromGitHub {
    owner = "input-output-hk";
    repo = "cardano-ledger-specs";
    rev = "bf008ce028751cae9fb0b53c3bef20f07c06e333";
    sha256 = "0000000000000000000000000000000000000000000000000000";
  };
  plutus = fetchFromGitHub {
    owner = "input-output-hk";
    repo = "plutus";
    rev = "3f089ccf0ca746b399c99afe51e063b0640af547";
    sha256 = "0000000000000000000000000000000000000000000000000000";
  };
  plutus-apps = fetchFromGitHub {
    owner = "input-output-hk";
    repo = "plutus-apps";
    rev = "7333e3c3ae62c955c5db7799dbf1c1f58593325d";
    sha256 = "0000000000000000000000000000000000000000000000000000";
  };
  ouroboros-network = fetchFromGitHub {
    owner = "input-output-hk";
    repo = "ouroboros-network";
    rev = "1f4973f36f689d6da75b5d351fb124d66ef1057d";
    sha256 = "lwTgyoZBQAaU6Sh7BouGJGUvK1tSVrWhJP63v7MpwKA=";
  };
  iohk-monitoring-framework = fetchFromGitHub {
    owner = "input-output-hk";
    repo = "iohk-monitoring-framework";
    rev = "46f994e216a1f8b36fe4669b47b2a7011b0e153c";
    sha256 = "QE3QRpIHIABm+qCP/wP4epbUx0JmSJ9BMePqWEd3iMY=";
  };
  Win32-network = fetchFromGitHub {
    owner = "input-output-hk";
    repo = "Win32-network";
    rev = "3825d3abf75f83f406c1f7161883c438dac7277d";
    sha256 = "Hesb5GXSx0IwKSIi42ofisVELcQNX6lwHcoZcbaDiqc=";
  };
  cardano-crypto = fetchFromGitHub {
    owner = "input-output-hk";
    repo = "cardano-crypto";
    rev = "f73079303f663e028288f9f4a9e08bcca39a923e";
    sha256 = "0000000000000000000000000000000000000000000000000000";
  };
  hedgehog-extras = fetchFromGitHub {
    owner = "input-output-hk";
    repo = "hedgehog-extras";
    rev = "edf6945007177a638fbeb8802397f3a6f4e47c14";
    sha256 = "0000000000000000000000000000000000000000000000000000";
  };
  goblins = fetchFromGitHub {
    owner = "input-output-hk";
    repo = "goblins";
    rev = "cde90a2b27f79187ca8310b6549331e59595e7ba";
    sha256 = "0000000000000000000000000000000000000000000000000000";
  };
  ekg-forward = fetchFromGitHub {
    owner = "input-output-hk";
    repo = "ekg-forward";
    rev = "d9e8fd302fa6ba41c07183d371e6777286d37bc2";
    sha256 = "0000000000000000000000000000000000000000000000000000";
  };
}
