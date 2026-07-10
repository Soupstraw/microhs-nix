{
  stdenv,
  lib,
  fetchFromGitHub,
}:
stdenv.mkDerivation rec {
  pname = "microhs";
  version = "0.16.5.0";
  src = fetchFromGitHub {
    owner = "augustss";
    repo = "MicroHs";
    rev = "v${version}";
    hash = "sha256-3eIw5obGrTJ4RPZoY6bjCF5OPu090Pw4ul1SqH8/yYI=";
  };

  makeFlags = [ "MCABAL=$(out)" ];
}
