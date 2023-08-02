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

  -- Completion
  --{ import = "astrocommunity.completion.tabnine-nvim" },

  -- Langs
  { import = "astrocommunity.pack.lua" },

  -- Misc
  {
    import = "astrocommunity.colorscheme.catppuccin",
    opts = {
      transparent_background = true,
    },
  },
  --[[
  { import = "astrocommunity.media.presence-nvim" },
  {
    "andweeb/presence.nvim",
    opts = {
      client_id = "793271441293967371",
      enable_line_number = false,
      main_image = "file",
      buttons = false,
    },
  },
  --]]
}
