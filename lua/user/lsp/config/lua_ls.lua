return {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      runtime = {
        version = "LuaJIT",
        special = {
          ["love.filesystem.load"] = "loadfile",
        },
      },
      workspace = {
        library = {
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.stdpath("config") .. "/lua"] = true,
          [vim.fn.stdpath("config") .. "/lua/LLS-Addons/love2d/library"] = true,
        },
      },
    },
  },
}
