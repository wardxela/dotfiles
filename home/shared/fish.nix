{ pkgs, ... }:

{
  programs.fish = {
    enable = true;
    functions = {
      y = ''
        set tmp (mktemp -t "yazi-cwd.XXXXXX")
        yazi $argv --cwd-file="$tmp"
        if read -z cwd < "$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        	builtin cd -- "$cwd"
        end
        rm -f -- "$tmp"
      '';
    };
    interactiveShellInit = ''
      set fish_greeting
      fish_vi_key_bindings
      fnm env --use-on-cd --shell fish | source
    '';
    shellAliases = {
      zed = "zeditor";
    };
    plugins = with pkgs; [
      {
        name = "tide";
        src = fishPlugins.tide.src;
      }
      {
        name = "plugin-sudope";
        src = fishPlugins.plugin-sudope.src;
      }
    ];
  };
}
