local config_path = vim.fn.expand("$XDG_CONFIG_HOME") .. "/astronvim"

return {
  settings = {
    Lua = {
      format = { enable = false },
      hint = { enable = true },

      diagnostics = {
        disable = { "unused-local" },
        globals = { "vim" },
      },

      completion = {
        enable = true,
        autoRequire = true,
      },

      runtime = {
        version = "LuaJIT",
        special = {
          ["love.filesystem.load"] = "loadfile",
        },
      },

      workspace = {
        checkThirdParty = "Apply",
        library = {
          [config_path .. "/LLSAddons/luaecs/module/library"] = true,
          [config_path .. "/LLSAddons/love2d/module/library"] = true,
          [config_path .. "/LLSAddons/xmake/module/library"] = true,
        },
      },
    },
  },
}
