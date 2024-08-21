return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "amitds1997/remote-nvim.nvim",
    version = "*", -- Pin to GitHub releases
    dependencies = {
      "nvim-lua/plenary.nvim", -- For standard functions
      "MunifTanjim/nui.nvim", -- To build the plugin UI
      "nvim-telescope/telescope.nvim", -- For picking b/w different remote methods
    },
    config = true,
  },

  {
    "linux-cultist/venv-selector.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "mfussenegger/nvim-dap",
      "mfussenegger/nvim-dap-python", --optional
      { "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
    },
    lazy = false,
    branch = "regexp", -- This is the regexp branch, use this for the new version
    config = function()
      require("venv-selector").setup()
    end,
    keys = {
      { ",v", "<cmd>VenvSelect<cr>" },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",

        "bash",
        "python",
        "dockerfile",

        "c",
        "cpp",
        "make",

        "yaml",
        "json",
      },
    },
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  { "sindrets/diffview.nvim", lazy = false },
  {
    "supermaven-inc/supermaven-nvim",
    config = function()
      require("supermaven-nvim").setup {}
    end,
  },
}
