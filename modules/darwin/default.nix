{ ... }:

{
  imports = [
    ./launchd.nix
    ./packages.nix
    ./services.nix
    ./system.nix
  ];

  users.users.wardxela = {
    name = "wardxela";
    home = "/Users/wardxela";
  };
}
