{ ... }:

{
  programs.bash = {
    enable = true;
    shellAliases = {
      zed = "zeditor";
    };
  };

  home.file.".blerc" = {
    enable = true;
    text = ''
      bind 'set keyseq-timeout 1'

      bleopt default_keymap=vi

      function blerc/vim-mode-hook {
        ble-import vim-surround

        bleopt keymap_vi_mode_show=

        ble-bind -m vi_nmap --cursor 2
        ble-bind -m vi_imap --cursor 5
        ble-bind -m vi_omap --cursor 4
        ble-bind -m vi_xmap --cursor 2
        ble-bind -m vi_cmap --cursor 0
      }

      blehook/eval-after-load keymap_vi blerc/vim-mode-hook
    '';
  };
}
