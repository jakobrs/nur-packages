{ pkgs ? import <nixpkgs> {} }:

{
  n2n = pkgs.callPackage ./pkgs/n2n {};
  mcstatus = pkgs.python3Packages.callPackage ./pkgs/mcstatus {};
}
