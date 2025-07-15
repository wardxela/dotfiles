{ ... }:

{
  imports = [
    ../../modules/darwin
  ];

  nixpkgs.hostPlatform = "aarch64-darwin";
  home-manager.users.wardxela = ./home.nix;
  security.pam.services.sudo_local.touchIdAuth = true;
}
