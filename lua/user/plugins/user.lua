return {
  -- Langs
  -- { "maxbane/vim-asm_ca65", lazy = false },

  -- Misc
  {
    "folke/todo-comments.nvim",
    lazy = false,
    config = function()
      require("todo-comments").setup({})
    end,
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
}
