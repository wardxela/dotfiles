{ ... }:

{
  imports = [
    ../../modules/shared
    ../../modules/darwin
  ];

  nixpkgs = {
    hostPlatform = "aarch64-darwin";
    # TODO: allow unfree packages explicitly (not globally)
    config.allowUnfree = true;
  };

  users.users.wardxela = {
    name = "wardxela";
    home = "/Users/wardxela";
  };

  security.pam.services.sudo_local.touchIdAuth = true;
}
