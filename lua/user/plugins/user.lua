return {
  -- Misc
  {
    "folke/todo-comments.nvim",
    lazy = false,
    config = function()
      require("todo-comments").setup({})
    end,
  },
  --[[
	{
		"tzachar/cmp-tabnine",
		lazy = false,
		build = "./install.sh",
		dependencies = "hrsh7th/nvim-cmp",
	},
	--]]
  {
    "cappyzawa/trim.nvim",
    lazy = false,
    event = "BufWritePre",
    opts = {},
  },
  {
    "p00f/clangd_extensions.nvim",
    dependencies = "mason-lspconfig.nvim", -- make sure to load after mason-lspconfig
  },
  --[[
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "clangd" }, -- automatically install lsp
		},
	},
	--]]
}
