#
# Minimal shell.nix example that just installs opam
#
{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    nativeBuildInputs = [ pkgs.buildPackages.opam];
}
