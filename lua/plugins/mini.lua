return {
  "echasnovski/mini.files",
  opts = {
    windows = {
      preview = false,
    },
    options = {
      use_as_default_explorer = true,
    },
  },
  keys = {
    {
      "<leader>e",
      function()
        if not require("mini.files").close() then
          require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
        end
      end,
      desc = "Open mini.files (Directory of Current File)",
    },
    {
      "<leader>E",
      function()
        if not require("mini.files").close() then
          require("mini.files").open(vim.uv.cwd(), true)
        end
      end,
      desc = "Open mini.files (cwd)",
    },
  },
}
