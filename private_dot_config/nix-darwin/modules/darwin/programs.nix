{ ... }:

{
  programs = {
    fish = {
      enable = true;
      interactiveShellInit = ''
        eval "$(/opt/homebrew/bin/brew shellenv)"
        set -x EDITOR vim
        set -g fish_greeting
        zoxide init fish | source
        fnm env --use-on-cd --shell fish | source
      '';
      shellAliases = {
        zed = "zeditor";
      };
    };
  };
}
