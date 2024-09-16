return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      -- local cmp = require "cmp"

      opts.mapping["<Up>"] = {}
      opts.mapping["<Down>"] = {}
    end,
  },
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
  {
    "rcarriga/nvim-notify",
    opts = {
      stages = "fade",
      background_colour = "#000000",
    },
  },
}
