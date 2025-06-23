{ pkgs, ... }:

{
  programs.amnezia-vpn.enable = true;
  programs.nix-ld.enable = true;
  programs.gnupg = {
    agent = {
      enable = true;
      pinentryPackage = pkgs.pinentry-tty;
    };
  };
  # TODO: Conflicts with gnome-keyring
  # programs.ssh.startAgent = true;
}
