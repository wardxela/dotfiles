{ ... }:

{
  imports = [
    ./launchd.nix
    ./packages.nix
    ./services.nix
    ./system.nix
  ];

  system.primaryUser = "wardxela";
  users.users.wardxela = {
    name = "wardxela";
    home = "/Users/wardxela";
  };
}
