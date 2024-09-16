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
    "cappyzawa/trim.nvim",
    lazy = false,
    event = "BufWritePre",
    opts = {},
  },
  {
    "fedepujol/move.nvim",
    opts = {
      line = {
        enable = true, -- Enables line movement
        indent = true, -- Toggles indentation
      },
      block = {
        enable = true, -- Enables block movement
        indent = true, -- Toggles indentation
      },
    },
  },
  {
    "toppair/peek.nvim",
    event = { "VeryLazy" },
    build = "deno task --quiet build:fast",
    config = function()
      require("peek").setup()
      vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
      vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
    end,
  },
}
