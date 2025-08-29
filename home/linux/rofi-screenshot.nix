{
  lib,
  stdenv,
  fetchFromGitHub,
  makeWrapper,
  slop,
  ffcast,
  ffmpeg,
  xclip,
  coreutils,
  procps,
  gnused,
  tesseract,
  libnotify,
}:

stdenv.mkDerivation {
  pname = "rofi-screenshot";
  version = "2025-08-17";

  src = fetchFromGitHub {
    owner = "wardxela";
    repo = "rofi-screenshot";
    rev = "0dd3f1376bea55383aa9c85239dc3acab439c66e";
    hash = "sha256-ASyEZ8wVc9d8m+MxxhrR5x2K2U0kb4dvwHSHdXYX18w=";
  };

  nativeBuildInputs = [ makeWrapper ];

  postFixup = ''
    wrapProgram $out/bin/rofi-screenshot \
      --set PATH ${
        lib.makeBinPath [
          coreutils
          ffcast
          ffmpeg
          gnused
          libnotify
          procps
          slop
          tesseract
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
    homepage = "https://github.com/wardxela/rofi-screenshot";
    platforms = lib.platforms.linux;
    license = lib.licenses.wtfpl;
  };
}
