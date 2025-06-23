{ ... }:

{
  programs.amnezia-vpn.enable = true;
  programs.nix-ld.enable = true;
  # TODO: Conflicts with gnome-keyring
  # programs.ssh.startAgent = true;
}
