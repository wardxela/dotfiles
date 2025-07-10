{ pkgs, ... }:

{
  programs = {
    amnezia-vpn.enable = true;
    nix-ld.enable = true;
    gnupg = {
      agent = {
        enable = true;
        pinentryPackage = pkgs.pinentry-tty;
      };
    };
    steam.enable = true;
    # TODO: Conflicts with gnome-keyring
    # ssh.startAgent = true;
  };
}
