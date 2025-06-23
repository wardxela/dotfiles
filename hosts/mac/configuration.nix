{ ... }:

{
  imports = [
    ../../modules/shared
    ../../modules/darwin
  ];

  nixpkgs.hostPlatform = "aarch64-darwin";

  security.pam.services.sudo_local.touchIdAuth = true;
}
