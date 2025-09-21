{ pkgs, ... }:

let
  tmx-script = ./scripts/tmx.sh |> builtins.readFile |> pkgs.writeShellScriptBin "tmx";
in
{
  programs.tmux = {
    enable = true;
    baseIndex = 1;
    escapeTime = 0;
    focusEvents = true;
    historyLimit = 5000;
    keyMode = "vi";
    mouse = true;
    terminal = "screen-256color";
  };
  home.packages = [ tmx-script ];
}
