-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Clear search and stop snippet on escape
vim.keymap.set("i", "jk", "<esc>", { desc = "Escape" })
