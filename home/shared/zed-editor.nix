{ ... }:

{
  programs.zed-editor = {
    enable = true;
    userKeymaps = [
      {
        use_key_equivalents = true;
        bindings = {
          cmd-g = "git_panel::ToggleFocus";
          cmd-e = "project_panel::ToggleFocus";
          "ctrl-{" = "pane::ActivatePreviousItem";
          "ctrl-}" = "pane::ActivateNextItem";
        };
      }
      {
        context = "Editor";
        use_key_equivalents = true;
        bindings = {
          ctrl-j = "menu::SelectNext";
          ctrl-k = "menu::SelectPrevious";
        };
      }
      {
        context = "Editor && (showing_code_actions || showing_completions)";
        use_key_equivalents = true;
        bindings = {
          ctrl-j = "editor::ContextMenuNext";
          ctrl-k = "editor::ContextMenuPrevious";
        };
      }
      {
        context = "vim_mode == insert";
        use_key_equivalents = true;
        bindings = {
          secondary-i = "editor::ShowCompletions";
        };
      }
    ];
    extensions = [
      "codebook"
      "colored-zed-icons-theme"
      "docker-compose"
      "dockerfile"
      "emmet"
      "env"
      "fish"
      "git-firefly"
      "github-theme"
      "html"
      "lua"
      "mcp-server-context7"
      "mcp-server-github"
      "nix"
      "php"
      "prisma"
      "scss"
      "sql"
      "toml"
      "vue"
    ];
    userSettings =
      let
        panelSize = 360;
        dock = "right";
      in
      {
        vim_mode = true;
        buffer_font_features = {
          calt = false;
        };
        ui_font_features = {
          calt = false;
        };
        icon_theme = "Colored Zed Icons Theme Dark";
        title_bar = {
          show_user_picture = false;
          show_sign_in = false;
        };
        tab_bar = {
          show_nav_history_buttons = false;
        };
        tabs = {
          file_icons = true;
          git_status = true;
          activate_on_close = "history";
        };
        project_panel = {
          dock = dock;
          default_width = panelSize;
          auto_fold_dirs = false;
        };
        git_panel = {
          dock = dock;
        };
        collaboration_panel = {
          dock = dock;
          default_width = panelSize;
        };
        chat_panel = {
          default_width = panelSize;
        };
        outline_panel = {
          dock = dock;
          default_width = panelSize;
        };
        notification_panel = {
          default_width = panelSize;
        };
        terminal = {
          default_height = 450;
        };
        languages = {
          JavaScript = {
            formatter = {
              code_actions = {
                "source.fixAll.eslint" = true;
              };
            };
          };
          TypeScript = {
            formatter = {
              code_actions = {
                "source.fixAll.eslint" = true;
              };
            };
          };
          TSX = {
            formatter = {
              code_actions = {
                "source.fixAll.eslint" = true;
              };
            };
          };
          Nix = {
            language_servers = [
              "nil"
              "!nixd"
            ];
          };
        };
        lsp = {
          nil = {
            settings = {
              formatting = {
                command = [ "nixfmt" ];
              };
            };
          };
        };
        features = {
          edit_prediction_provider = "supermaven";
        };
        telemetry = {
          diagnostics = false;
          metrics = false;
        };
      };
  };
}

# TODO: https://github.com/LoamStudios/zed-mcp-server-github/issues/6
# "context_servers": {
#   "mcp-server-github": {
#     "settings": {
#       "github_personal_access_token": "{{ gopass "tokens/github/zed" }}"
#     }
#   }
# },
