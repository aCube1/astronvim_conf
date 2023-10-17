return {
  "AstroNvim/astrocommunity",

  -- Code helpers
  { import = "astrocommunity.diagnostics.lsp_lines-nvim" },
  { import = "astrocommunity.indent.indent-blankline-nvim" },
  { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
  {
    "m4xshen/smartcolumn.nvim",
    opts = {
      colorcolumn = 120,
      disabled_filetypes = { "help" },
    },
  },

  -- Langs
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.cpp" },

  -- LSP
  { import = "astrocommunity.lsp.lsp-inlayhints-nvim" },
  { import = "astrocommunity.lsp.lsp-signature-nvim" },

  -- Misc
  { import = "astrocommunity.colorscheme.nightfox-nvim" },
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    opts = {
      options = {
        transparent = true,
      },
    },
  },
  {
    import = "astrocommunity.colorscheme.catppuccin",
    opts = {
      transparent_background = true,
    },
  },
}
