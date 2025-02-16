return {
  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
        "biome",
        "typescript-language-server",
        "tailwindcss-language-server"
  		},
  	},
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  {
    "andweeb/presence.nvim",
    lazy = false,
  },
  {
    "supermaven-inc/supermaven-nvim",
    config = function()
      require("supermaven-nvim").setup({
        keymaps = {
          accept_suggestion = "<A-f>",
        }
      })
    end,
    lazy = false,
  },
  {
    "thePrimeagen/vim-be-good",
    cmd = "VimBeGood",
    -- config = function()
    --   require("VimBeGood").setup {}
    -- end,
  },
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
