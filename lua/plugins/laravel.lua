return {
  -- add the laravel.nvim plugin which gives the ability to run artisan commands from neovim
  {
    "adalessa/laravel.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "tpope/vim-dotenv",
      "MunifTanjim/nui.nvim",
      "kevinhwang91/promise-async",
    },
    cmd = { "Sail", "Artisan", "Composer", "Npm", "Yarn", "Laravel" },
    keys = {
      { "<leader>Laa", ":Laravel artisan<cr>" },
      { "<leader>Lar", ":Laravel routes<cr>" },
      { "<leader>Lam", ":Laravel related<cr>" },
    },
    event = { "VeryLazy" },
    config = true,
    opts = {
      features = { null_ls = { enable = false } },
    },
  },
  -- add the blade-nav.nvim plugin which provides Goto File capabilities for blade files
  {
    "ricardoramirezr/blade-nav.nvim",
    dependencies = {
      "hrsh7th/nvim-cmp",
    },
    ft = { "blade", "php" },
  },
}
