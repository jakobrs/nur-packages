{ pkgs ? import <nixpkgs> {} }:

{
  n2n = pkgs.callPackage ./n2n {};
}
