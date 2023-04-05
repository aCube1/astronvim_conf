return {
  "AstroNvim/astrocommunity",

  -- Code helpers
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

  -- Misc
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.media.presence-nvim" },
  {
    "andweeb/presence.nvim",
    opts = {
      buttons = false,
      main_image = "file",
    },
  },
}
