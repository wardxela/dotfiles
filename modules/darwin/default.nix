{ ... }:

{
  imports = [
    ./launchd.nix
    ./packages.nix
    ./programs.nix
    ./services.nix
    ./system.nix
  ];

  users.users.wardxela = {
    name = "wardxela";
    home = "/Users/wardxela";
  };
}
