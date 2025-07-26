{ pkgs, ... }:

let
  exodusIcon = pkgs.fetchurl {
    url = "https://www.exodus.com/img/favicons/apple-icon-180x180.png?v=3";
    hash = "sha256-EhQijy+gw+hPLeH+LkBF5RdaF+9WZ4/3/YNLZNLRri4=";
  };
  # TODO: https://github.com/NixOS/nixpkgs/issues/400985
  patchedExodus = pkgs.exodus.overrideAttrs (
    finalAttrs: previousAttrs: {
      version = "25.28.4";
      src = pkgs.requireFile {
        name = "exodus-linux-x64-${finalAttrs.version}.zip";
        url = "https://downloads.exodus.com/releases/exodus-linux-x64-${finalAttrs.version}.zip";
        hash = "sha256-AGeFsMHSywC32iaIGI9/VY2YC3gR5bHu33rOWJlyFFM=";
      };
      installPhase = ''
        mkdir -p $out/bin $out/share/applications
        cp -r . $out
        ln -s $out/Exodus $out/bin/Exodus
        ln -s $out/bin/Exodus $out/bin/exodus
        ln -s $out/exodus.desktop $out/share/applications
        substituteInPlace $out/share/applications/exodus.desktop \
              --replace 'Exec=bash -c "cd \\`dirname %k\\` && ./Exodus %u"' "Exec=Exodus %u"
        printf '\nIcon=exodus' >> $out/share/applications/exodus.desktop
        install -Dm444 ${exodusIcon} $out/share/pixmaps/exodus.png
      '';
    }
  );
in
{
  home.packages = with pkgs; [
    # GUI
    pwvucontrol
    atlauncher
    xcolor
    xclip

    # CLI
    maim
    tesseract

    # TODO: Should be in the /shared/packages
    anytype # https://github.com/NixOS/nixpkgs/pull/411491
    patchedExodus
    simplescreenrecorder
  ];
}
