-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 500, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics_mode = 3, -- diagnostic mode on start (0 = off, 1 = no signs/virtual text, 2 = no virtual text, 3 = on)

      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = false,
        number = true,
        spell = false,
        signcolumn = "auto",
        wrap = false,
        expandtab = false,
        tabstop = 4,
        shiftwidth = 4,
        colorcolumn = "80,90",
        wichwrap = vim.opt.whichwrap:append "<,>,[,],h,l",
        termguicolors = true,
        title = false,
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      n = {
        ["<Leader>b"] = { desc = "Buffers" },

        -- todos-comments.nvim
        ["<Leader>ft"] = { "<cmd>TodoTelescope<cr>", desc = "Search TODOs" },

        -- move.nvim
        ["<A-Up>"] = { ":MoveLine(-1)<cr>", desc = "Move Line Up" },
        ["<A-Down>"] = { ":MoveLine(1)<cr>", desc = "Move Line Down" },
      },
      v = {
        -- move.nvim
        ["<A-Up>"] = { ":MoveBlock(-1)<cr>", desc = "Move Selection Up" },
        ["<A-Down>"] = { ":MoveBlock(1)<cr>", desc = "Move Selection Down" },
      },
    },
    rooter = {
      detector = {
        "lsp",
        { ".git", ".cache", ".godot" },
        { "MakeFile", "CMakeLists.txt", "project.godot" },
      },
      ignore = {
        servers = {},
        dirs = {},
      },
      autochdir = false,
      scope = "global",
      notify = true, -- show notification on every working directory change
    },
  },
}
