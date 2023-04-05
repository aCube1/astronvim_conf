return {
	-- first key is the mode
	n = {
        ["<Tab>"] = { "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
        ["<S-Tab>"] = { "<cmd>BufferLineCyclePrev<cr>", desc = "Previous buffer" },
        ["<leader>ft"] = { "<cmd>TodoTelescope<cr>", desc = "Search todos" },
	},
}
