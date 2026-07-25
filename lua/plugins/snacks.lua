return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          files = {
            hidden = true, -- Show hidden/dotfiles
            ignored = false, -- Respect .gitignore
          },
          grep = {
            hidden = true, -- Also search in hidden files
            ignored = false,
          },
          explorer = {
            hidden = true, -- Show hidden files in the file tree
            ignored = true, -- Show gitignored files (e.g., node_modules)
          },
        },
      },
    },
  },
}
