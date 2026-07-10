{
  stdenv,
  fetchFromGitHub,
  ghc,
}:

stdenv.mkDerivation rec {
  pname = "microcabal";
  version = "0.5.10.0";
  src = fetchFromGitHub {
    owner = "augustss";
    repo = "MicroCabal";
    rev = "v${version}";
    hash = "sha256-0Bw756l1YOIKsG7VtP3iedZ6Riz/fF1qPwzyZB4div0=";
  };

  nativeBuildInputs = [ ghc ];

  makeFlags = [ "bin/gmcabal" ];

  installPhase = ''
    mkdir -p $out/bin
    cp bin/gmcabal $out/bin/mcabal
  '';
}
