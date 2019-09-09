{
  pkgsSrc ? <nixpkgs>,
  pkgs ? import pkgsSrc {},
}:

with pkgs;

stdenv.mkDerivation {
  name = "{{cookiecutter.project_slug}}-dev-env";
  buildInputs = [
    gnumake
    python3
    python3Packages.poetry
  ];
}
