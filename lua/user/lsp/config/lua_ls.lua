return {
	settings = {
		Lua = {
			telemetry = { enable = false },
			runtime = { version = "LuaJIT" },
			diagnostics = { globals = { "love" } },
			workspace = {
				library = {
					"${3rd}/love2d/library",
					"${3rd}/luaecs/library",
		        },
			},
		},
	},
	single_file_support = false,
}
