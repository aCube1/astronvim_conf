-- AstroLSP allows you to customize the features in AstroNvim's LSP configuration engine
-- Configuration documentation can be found with `:h astrolsp`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

local config_path = vim.fn.expand "$XDG_CONFIG_HOME" .. "/astronvim"

---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    features = {
      autoformat = true,
      codelens = true,
      inlay_hints = true,
      semantic_tokens = true,
    },
    formatting = {
      format_on_save = {
        enabled = true,
        allow_filetypes = {},
        ignore_filetypes = {},
      },
      disabled = {},
      timeout_ms = 1000,
    },
    diagnostics = {
      virtual_text = false,
      severity_sort = true,
    },
    servers = {
      "glsl_analyzer",
    },
    -- customize language server configuration options passed to `lspconfig`
    ---@diagnostic disable: missing-fields
    config = {
      clangd = {
        cmd = {
          "clangd",
          "--background-index",
          "--clang-tidy",
          "--completion-style=detailed",
          "--function-arg-placeholders",
          "--header-insertion=iwyu",
          "--header-insertion-decorators",
          "--malloc-trim",
          "--pch-storage=memory",
        },
        capabilities = {
          offsetEncoding = "utf-8",
        },
      },
      gopls = {
        settings = {
          gopls = {
            gofumpt = true,
            hints = {
              assignVariablesTypes = true,
              compositeLiteralFields = true,
              compositeLiteralTypes = false,
              constantValues = false,
              functionTypeParameters = false,
              parameterNames = true,
              rangeVariableTypes = true,
            },
          },
        },
      },
      lua_ls = {
        settings = {
          Lua = {
            format = { enable = false },
            hint = { enable = true },
            diagnostics = {
              globals = { "vim" },
            },
            completion = {
              enable = true,
              autoRequire = true,
            },
            runtime = {
              version = "LuaJIT",
            },
          },
        },
      },
      rust_analyzer = {
        settings = {
          ["rust-analyzer"] = {
            checkOnSave = true,
            check = {
              command = "clippy",
            },
            cargo = {
              extraEnv = { CARGO_PROFILE_RUST_ANALYZER_INHERITS = "dev" },
              extraArgs = { "--profile", "rust-analyzer" },
            },
          },
        },
      },
    },
  },
}
