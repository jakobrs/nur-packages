{ lib, stdenv, fetchFromGitHub
, pkg-config
, openal, libpulseaudio, libao, SDL2, libudev, gtk3, libXv, alsaLib }:

stdenv.mkDerivation rec {
  pname = "bsnes";
  version = "unstable-2021-03-13";

  src = fetchFromGitHub {
    owner = "bsnes-emu";
    repo = "bsnes";
    rev = "f57657f27ddec337b1960c7ddaa1b23894bc00c3";
    hash = "sha256:1gmgw0v1nd0chy7jwl17mq12jy100hip1hnwgqfbwqs0f0p0v42y";
  };

  sourceRoot = "source/bsnes";

  makeFlags = [
    "hiro=gtk3"
    "out=bsnes"
    "prefix=${placeholder "out"}"
  ];

  enableParallelBuilding = true;

  nativeBuildInputs = [ pkg-config ];

  buildInputs = [
    openal libpulseaudio libao SDL2 libudev gtk3 libXv alsaLib
  ];
}
