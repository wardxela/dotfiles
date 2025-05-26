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
    ];
    userSettings =
      let
        panelSize = 360;
        dock = "right";
      in
      {
        vim_mode = true;
        ui_font_size = 18;
        buffer_font_family = "JetBrainsMono Nerd Font";
        buffer_font_size = 16;
        buffer_font_features = {
          calt = false;
        };
        ui_font_family = "JetBrainsMono Nerd Font";
        ui_font_features = {
          calt = false;
        };
        icon_theme = "Colored Zed Icons Theme Dark";
        theme = {
          mode = "system";
          light = "Github Light";
          dark = "Github Dark";
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
        auto_install_extensions = {
          codebook = true;
          colored-zed-icons-theme = true;
          docker-compose = true;
          dockerfile = true;
          emmet = true;
          env = true;
          fish = true;
          git-firefly = true;
          github-theme = true;
          html = true;
          lua = true;
          mcp-server-context7 = true;
          mcp-server-github = true;
          nix = true;
          php = true;
          prisma = true;
          scss = true;
          sql = true;
          toml = true;
          vue = true;
        };
        languages = {
          JavaScript = {
            formatter = {
              code_actions = {
                source.fixAll.eslint = true;
              };
            };
          };
          TypeScript = {
            formatter = {
              code_actions = {
                source.fixAll.eslint = true;
              };
            };
          };
          TSX = {
            formatter = {
              code_actions = {
                source.fixAll.eslint = true;
              };
            };
          };
          Nix = {
            formatter = {
              external = {
                command = "nixfmt";
              };
            };
          };
        };
        features = {
          edit_prediction_provider = "supermaven";
        };
        agent = {
          default_model = {
            provider = "openai";
            model = "google/gemini-2.5-flash-preview";
          };
          version = "2";
        };
        language_models = {
          openai = {
            api_url = "https://openrouter.ai/api/v1";
            available_models = [
              {
                name = "deepseek/deepseek-chat-v3-0324";
                display_name = "deepseek-v3";
                max_tokens = 128000;
              }
              {
                name = "google/gemini-2.5-flash-preview";
                display_name = "gemini-2.5-flash-preview";
                max_tokens = 1000000;
              }
            ];
            version = "1";
          };
        };
        telemetry = {
          diagnostics = false;
          metrics = false;
        };
      };
  };
}

# TODO:
# "context_servers": {
#   "mcp-server-github": {
#     "settings": {
#       "github_personal_access_token": "{{ gopass "tokens/github/zed" }}"
#     }
#   }
# },
