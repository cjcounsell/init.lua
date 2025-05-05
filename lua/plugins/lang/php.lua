return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "php" } },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        phpactor = {
          enabled = false,
        },
        intelephense = {
          enabled = true,
        },
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "pint",
      },
    },
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        php = { "pint" },
      },
    },
  },
}
