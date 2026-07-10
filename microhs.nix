{stdenv, lib, fetchFromGitHub}:
stdenv.mkDerivation {
  pname = "microhs";
  version = "2024-09-29";
  src = fetchFromGitHub {
    owner = "augustss";
    repo = "MicroHs";
    rev = "41d50f9c3c067908585d8cd259779f41745ca350";
    hash = "sha256-3eIw5obGrTJ4RPZoY6bjCF5OPu090Pw4ul1SqH8/yYI=";
  };

  makeFlags = [ "MCABAL=$(out)" ];
}
