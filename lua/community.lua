-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  -- Langs
  -- { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.cpp" },

  -- LSP
  { import = "astrocommunity.diagnostics.lsp_lines-nvim" },
  { import = "astrocommunity.lsp.lsp-signature-nvim" },
  { import = "astrocommunity.lsp.nvim-lint" },
  { import = "astrocommunity.lsp.nvim-lsp-endhints" },

  -- Debugging
  { import = "astrocommunity.debugging.nvim-dap-view" },

  -- Misc
  { import = "astrocommunity.colorscheme.onedarkpro-nvim" },
  {
    "olimorris/onedarkpro.nvim",
    opts = {
      options = {
        transparency = true,
        highlight_inactive_windows = true,
      },
    },
  },
  { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
  {
    "m4xshen/smartcolumn.nvim",
    opts = {
      colorcolumn = "90",
      disabled_filetypes = { "help" },
    },
  },
}
