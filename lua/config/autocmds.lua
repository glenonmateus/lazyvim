-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- vim.api.nvim_create_autocmd({ "FileType" }, {
--   pattern = { "sh" },
--   callback = function()
--     vim.b.autoformat = false
--   end,
-- })

vim.o.autoread = true
vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" }, {
  group = vim.api.nvim_create_augroup("AutoReloadBuffers", { clear = true }),
  callback = function()
    if vim.fn.mode() ~= "c" then
      vim.cmd("checktime")
    end
  end,
})

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  desc = "Exit active mini.snippets session on save",
  callback = function()
    -- Check if mini.snippets is loaded and has an active session
    if package.loaded["mini.snippets"] then
      local MiniSnippets = require("mini.snippets")
      if MiniSnippets.session.get() ~= nil then
        MiniSnippets.session.stop()
      end
    end
  end,
})
