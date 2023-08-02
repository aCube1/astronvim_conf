return {
  settings = {
    Lua = {
      telemetry = { enable = false },
      runtime = { version = "LuaJIT" },
      workspace = {
        userThirdParty = {
          vim.fn.expand("~/.config/astronvim/lua/user/lsp/addons/love2d"),
        },
        library = {
          vim.fn.expand("~/.config/astronvim/lua/user/lsp/addons/love2d/library"),
        },
      },
    },
  },
  single_file_support = false,
}
