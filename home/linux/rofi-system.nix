{
  lib,
  stdenv,
  fetchFromGitHub,
  makeWrapper,
  coreutils,
  wireplumber,
  swaylock,
  systemd,
}:

stdenv.mkDerivation {
  pname = "rofi-system";
  version = "2025-08-29";

  src = fetchFromGitHub {
    owner = "wardxela";
    repo = "rofi-system";
    rev = "a4d4e542ae162857bf47c24ff9f63064cd50f42a";
    hash = "sha256-EwnojPlY4/L3Nv2pi30fedfmzah9fTf2dtN7uGw2XXI=";
  };

  nativeBuildInputs = [ makeWrapper ];

  postFixup = ''
    wrapProgram $out/bin/rofi-system \
      --set PATH ${
        lib.makeBinPath [
          coreutils
          wireplumber
          swaylock
          systemd
        ]
      }
  '';

  installPhase = ''
    install -Dm755 rofi-system $out/bin/rofi-system
  '';

  meta = {
    description = "Raycast-inspired extension to perform some system-level things using Rofi";
    mainProgram = "rofi-system";
    homepage = "https://github.com/wardxela/rofi-system";
    platforms = lib.platforms.linux;
    license = lib.licenses.gpl3;
  };
}
