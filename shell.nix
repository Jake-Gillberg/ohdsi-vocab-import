{pkgs ? import <nixpkgs> {} } :
pkgs.mkShell {
  nativeBuildInputs = [
    pkgs.unzip
    pkgs.jdk11_headless
    pkgs.moreutils
  ];
}
