return {
  "akinsho/bufferline.nvim",
  init = function()
    local bufferline = require("catppuccin.special.bufferline")
    bufferline.get = bufferline.get or bufferline.get_theme
  end,
}
