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
    servers = {
      "glsl_analyzer",
      "zls",
    },
    -- customize language server configuration options passed to `lspconfig`
    ---@diagnostic disable: missing-fields
    config = {
      clangd = {
        cmd = {
          "clangd",
          "--background-index",
          "--clang-tidy",
          "--completion-style=bundled",
          "--cross-file-rename",
          "--function-arg-placeholders",
          "--header-insertion=iwyu",
          "--header-insertion-decorators",
          "-j=8",
          "--malloc-trim",
          "--pch-storage=memory",
        },
        capabilities = {
          offsetEncoding = "utf-8",
        },
      },
      lua_ls = {
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
                [config_path .. "/LLSAddons/love2d/module/library"] = true,
              },
            },
          },
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
    },
    handlers = {},
    autocmds = {
      lsp_document_highlight = {
        cond = "textDocument/documentHighlight",
        {
          event = { "CursorHold", "CursorHoldI" },
          desc = "Document Highlighting",
          callback = function() vim.lsp.buf.document_highlight() end,
        },
        {
          event = { "CursorMoved", "CursorMovedI", "BufLeave" },
          desc = "Document Highlighting Clear",
          callback = function() vim.lsp.buf.clear_references() end,
        },
      },
    },
    mappings = {
      n = {
        gl = { function() vim.diagnostic.open_float() end, desc = "Hover diagnostics" },
      },
    },
    -- on_attach = function(client, bufnr) require("clangd_extensions.inlay_hints").set_inlay_hints() end,
  },
}
