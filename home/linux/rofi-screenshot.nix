{
  lib,
  stdenv,
  fetchFromGitHub,
  makeWrapper,
  dunst,
  slop,
  ffcast,
  ffmpeg,
  xclip,
  coreutils,
  procps,
  gnused,
}:

stdenv.mkDerivation {
  pname = "rofi-screenshot";
  version = "2025-08-17";

  src = fetchFromGitHub {
    owner = "wardxela";
    repo = "rofi-screenshot";
    rev = "c5e1fde531a9da3db742606b7744d2f9b4c8337a";
    hash = "sha256-LomulxVaEqxvtonvj1Kx4XktEnPf+weUfYHmNUiwlDU=";
  };

  nativeBuildInputs = [ makeWrapper ];

  postFixup = ''
    wrapProgram $out/bin/rofi-screenshot \
      --set PATH ${
        lib.makeBinPath [
          coreutils
          dunst
          ffcast
          ffmpeg
          gnused
          procps
          slop
          xclip
        ]
      }
  '';

  installPhase = ''
    install -Dm755 rofi-screenshot $out/bin/rofi-screenshot
  '';

  meta = {
    description = "Use rofi to perform various types of screenshots and screen captures";
    mainProgram = "rofi-screenshot";
    homepage = "https://github.com/ceuk/rofi-screenshot";
    platforms = lib.platforms.all;
    license = lib.licenses.wtfpl;
  };
}
