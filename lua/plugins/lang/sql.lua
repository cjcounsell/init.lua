return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters = {
        sqlfluff = {
          args = { "lint", "--format=json", "--dialect=tsql", "-" },
        },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        sqlfluff = {
          args = { "format", "--dialect=tsql", "-" },
        },
      },
    },
  },
}
