{ ... }:

{
  programs = {
    amnezia-vpn.enable = true;
    nix-ld.enable = true;
    steam.enable = true;
    ssh.startAgent = true;
  };
}
