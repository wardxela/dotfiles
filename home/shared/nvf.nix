{ inputs, pkgs, ... }:

{
  imports = [ inputs.nvf.homeManagerModules.default ];

  programs.nvf = {
    enable = true;
    settings = {
      vim = {
        clipboard = {
          enable = true;
          registers = "unnamedplus";
        };
        telescope = {
          enable = true;
          extensions = [
            {
              name = "fzf";
              packages = with pkgs.vimPlugins; [
                telescope-fzf-native-nvim
              ];
            }
          ];
        };
        filetree.neo-tree.enable = true;
        utility = {
          surround = {
            enable = true;
            useVendoredKeybindings = false;
          };
        };
        startPlugins = with pkgs.vimPlugins; [
          ReplaceWithRegister
          vim-exchange
        ];
        lsp = {
          enable = true;
          formatOnSave = true;
          inlayHints.enable = true;
        };
        languages = {
          enableExtraDiagnostics = true;
          enableFormat = true;
          enableTreesitter = true;
          nix = {
            enable = true;
            format = {
              package = pkgs.nixfmt;
              type = "nixfmt";
            };
          };
        };
        options = {
          langmap = "ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz";
        };
        keymaps = [
          {
            key = "<Esc>";
            mode = "n";
            action = "<Cmd>nohlsearch<CR>";
          }
          {
            key = "<leader>t";
            mode = "n";
            action = "<Cmd>Neotree reveal toggle right<CR>";
          }
          {
            key = "gR";
            mode = "n";
            action = "<Plug>ReplaceWithRegisterOperator";
          }
          {
            key = "gRR";
            mode = "n";
            action = "<Plug>ReplaceWithRegisterLine";
          }
          {
            key = "gR";
            mode = "v";
            action = "<Plug>ReplaceWithRegisterVisual";
          }
        ];
      };
    };
  };
}
