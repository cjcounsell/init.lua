return {
  {
    "GustavEikaas/easy-dotnet.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "folke/snacks.nvim" },
    config = function()
      local dotnet = require("easy-dotnet")
      dotnet.setup({
        lsp = {
          enabled = false,
        },
        debugger = {
          bin_path = require("lazyvim.util.root").realpath("~/.local/share/nvim/mason/bin/netcoredbg"),
          auto_register_dap = true,
        },
        picker = "snacks",
      })

      require("easy-dotnet.netcoredbg").register_dap_variables_viewer()
    end,
  },
}
