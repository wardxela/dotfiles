{ pkgs, spicetify-nix, ... }:

{
  imports = [
    spicetify-nix.darwinModules.spicetify
  ];

  programs = {
    fish = {
      enable = true;
      interactiveShellInit = ''
        set fish_greeting
        zoxide init fish | source
        fnm env --use-on-cd --shell fish | source
      '';
      shellAliases = {
        zed = "zeditor";
      };
    };
    spicetify =
      let
        spicePkgs = spicetify-nix.legacyPackages.${pkgs.stdenv.system};
      in
      {
        enable = true;
        enabledExtensions = with spicePkgs.extensions; [
          adblockify
          shuffle
          keyboardShortcut
        ];
      };
  };
}
