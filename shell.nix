#
# Minimal shell.nix example that just install opam
#
{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    nativeBuildInputs = [ pkgs.buildPackages.opam];
}
