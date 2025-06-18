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
        function y
          set tmp (mktemp -t "yazi-cwd.XXXXXX")
          yazi $argv --cwd-file="$tmp"
          if read -z cwd < "$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
          	builtin cd -- "$cwd"
          end
          rm -f -- "$tmp"
        end
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
