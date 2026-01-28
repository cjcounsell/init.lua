-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.autoformat = false
vim.g.lazyvim_prettier_needs_config = true

vim.schedule(function()
  if vim.fn.has("wsl") == 1 then
    local paste_cmd = 'powershell.exe -NoLogo -NoProfile -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))'
    vim.g.clipboard = {
      name = "WslClipboard",
      copy = { ["+"] = "clip.exe", ["*"] = "clip.exe" },
      paste = { ["+"] = paste_cmd, ["*"] = paste_cmd },
      cache_enabled = 0,
    }
  end
  vim.opt.clipboard = "unnamedplus"
end)

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.opt.formatoptions = "tqnjl" -- tcqj

vim.filetype.add({
    extension = {
        tiltfile = 'starlark'
    },
    filename = {
        ["Tiltfile"] = "starlark",
    },
})
