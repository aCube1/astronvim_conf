return {
	-- Misc
	{
		"folke/todo-comments.nvim",
		dependencies = "nvim-lua/plenary.nvim",
	},
	{
		"tzachar/cmp-tabnine",
		build = "./install.sh",
		dependencies = "hrsh7th/nvim-cmp",
	},
	{
		"cappyzawa/trim.nvim",
		event = "BufWritePre",
		opts = {},
	},
	{
		"p00f/clangd_extensions.nvim",
		dependencies = "mason-lspconfig.nvim", -- make sure to load after mason-lspconfig
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "clangd" }, -- automatically install lsp
		},
	},
}
