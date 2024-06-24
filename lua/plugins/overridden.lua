return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      -- local cmp = require "cmp"

      opts.mapping["<Up>"] = {}
      opts.mapping["<Down>"] = {}
    end,
  },
}
