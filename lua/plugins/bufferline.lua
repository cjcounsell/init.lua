return {
  "akinsho/bufferline.nvim",
  init = function()
    local bufferline = require("catppuccin.groups.integrations.bufferline")
    bufferline.get = bufferline.get or bufferline.get_theme
  end,
}
