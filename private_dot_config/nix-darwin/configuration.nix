{
  pkgs,
  ...
}:

{
  fonts.packages = [
    pkgs.nerd-fonts.jetbrains-mono
  ];

  nix = {
    settings.experimental-features = [
      "nix-command"
      "flakes"
    ];
  };

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 5;

  nixpkgs.hostPlatform = "aarch64-darwin";
}
