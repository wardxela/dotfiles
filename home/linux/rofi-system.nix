{
  lib,
  stdenv,
  fetchFromGitHub,
  makeWrapper,
  coreutils,
  wireplumber,
}:

stdenv.mkDerivation {
  pname = "rofi-system";
  version = "2025-08-29";

  src = fetchFromGitHub {
    owner = "wardxela";
    repo = "rofi-system";
    rev = "3002b7d3fb70671772a6faaba255724bae02a6e0";
    hash = "sha256-pG0zWhGcnj95Qy9LejIDV5KYChvAULj+xUR4jjN/CLA=";
  };

  nativeBuildInputs = [ makeWrapper ];

  postFixup = ''
    wrapProgram $out/bin/rofi-system \
      --set PATH ${
        lib.makeBinPath [
          coreutils
          wireplumber
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
