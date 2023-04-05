return {
  -- Misc
  { "ntpeters/vim-better-whitespace" }, -- Trailing spaces
  { "davisdude/vim-love-docs" },
  {
    "folke/todo-comments.nvim",
    dependencies = "nvim-lua/plenary.nvim",
  },
  {
    "tzachar/cmp-tabnine",
    build = "./install.sh",
    dependencies = "hrsh7th/nvim-cmp",
  },
  {
    "cappyzawa/trim.nvim",
    event = "BufWritePre",
    opts = {},
  },
  {
    "p00f/clangd_extensions.nvim",
    dependencies = "mason-lspconfig.nvim", -- make sure to load after mason-lspconfig
  },
}
