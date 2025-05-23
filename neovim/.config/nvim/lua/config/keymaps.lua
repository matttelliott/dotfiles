-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
map("i", "jk", "<esc>", { desc = "Normal Mode", remap = true })
map("i", "Jk", "<esc>", { desc = "Normal Mode", remap = true })
map("i", "JK", "<esc>", { desc = "Normal Mode", remap = true })
map("n", "<leader>w", "<cmd>wa<enter>", { desc = "Write Files", remap = true })
