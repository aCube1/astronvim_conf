-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },

  -- Langs
  { "maxbane/vim-asm_ca65", lazy = false },

  -- Misc
  {
    "folke/todo-comments.nvim",
    lazy = false,
    config = function() require("todo-comments").setup {} end,
  },
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = false,
    priority = 1000,
  },
  {
    "cappyzawa/trim.nvim",
    lazy = false,
    event = "BufWritePre",
    opts = {},
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      stages = "fade",
      background_colour = "#000000",
    },
  },
  {
    "fedepujol/move.nvim",
    opts = {},
  },

  -- Overridings
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        "         ▒▒▒        ",
        "     ▒▒▒▒▒▒▒▒▒▒     ",
        " ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ ",
        "░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒",
        "░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒",
        "░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒",
        "░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒",
        "░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒",
        "  ░░░░░░░░▒▒▒▒▒▒▒▒  ",
        "     ░░░░░▒▒▒▒▒     ",
        "         ░▒         ",
      }
      return opts
    end,
  },
}
