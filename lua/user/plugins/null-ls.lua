return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    local null_ls = require "null-ls"

    config.sources = {
      -- Lua
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.prettier,

      -- CMake
      null_ls.builtins.formatting.cmake_format,
      null_ls.builtins.diagnostics.cmake_lint,

      -- Go
      null_ls.builtins.diagnostics.revive,

      -- All
      null_ls.builtins.completion.spell,
    }

    return config
  end,
}
