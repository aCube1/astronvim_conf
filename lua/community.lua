-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- Code helpers
  { import = "astrocommunity.diagnostics.lsp_lines-nvim" },
  { import = "astrocommunity.indent.indent-blankline-nvim" },
  { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
  { import = "astrocommunity.lsp.nvim-lsp-endhints" },
  {
    "m4xshen/smartcolumn.nvim",
    opts = {
      colorcolumn = "90",
      disabled_filetypes = { "help" },
    },
  },

  -- Langs
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.godot" },
  { import = "astrocommunity.pack.cs" },

  -- LSP
  { import = "astrocommunity.lsp.lsp-signature-nvim" },

  -- Misc
  { import = "astrocommunity.colorscheme.onedarkpro-nvim" },
  { import = "astrocommunity.media.neocord-nvim" },
  {
    "olimorris/onedarkpro.nvim",
    opts = {
      options = {
        transparency = true,
        highlight_inactive_windows = true,
      },
    },
  },
  { import = "astrocommunity.colorscheme.nightfox-nvim" },
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    opts = {
      options = {
        transparent = true,
        styles = {
          comments = "italic",
          keywords = "bold",
          types = "italic,bold",
        },
      },
    },
  },
}
