{ ... }:

{
  imports = [
    ./environment.nix
    ./packages.nix
    ./programs.nix
  ];

  virtualisation.docker = {
    rootless = {
      enable = true;
      setSocketVariable = true;
    };
  };
}
