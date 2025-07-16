-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = LazyVim.safe_keymap_set

-- Clear search and stop snippet on escape
map("i", "jk", "<esc>", { desc = "Escape" })

-- Change LazyVim Change log
map("n", "<leader>Lc", function()
  LazyVim.news.changelog()
end, { desc = "LazyVim Changelog" })
