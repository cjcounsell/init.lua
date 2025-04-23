-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set

map("i", "jk", "<ESC>")

vim.keymap.del("n", "<leader>wd")
vim.keymap.del("n", "<leader>wm")

map("n", "<leader>Wd", "<C-W>c", { desc = "Delete Window", remap = true })
Snacks.toggle.zoom():map("<leader>Wm"):map("<leader>uZ")

map("n", "<C-d>", "<C-d>zz", { desc = "Scroll half page down" })
map("n", "<C-u>", "<C-u>zz", { desc = "Scroll half page up" })
