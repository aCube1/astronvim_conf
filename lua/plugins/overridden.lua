return {
  {
    "Saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "default",

        ["<Up>"] = {},
        ["<Down>"] = {},
      },
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      popup_border_style = "rounded",
      source_selector = {
        sources = {
          { source = "filesystem" },
        },
      },
      event_handlers = {
        {
          event = "file_open_requested",
          handler = function()
            -- vim.cmd("Neotree close")
            require("neo-tree.command").execute { action = "close" }
          end,
        },
      },
      filesystem = {
        window = {
          popup = {
            position = { col = "100%", row = "2" },
            size = function(state)
              local root_name = vim.fn.fnamemodify(state.path, ":~")
              local root_len = string.len(root_name) + 4
              return {
                width = math.max(root_len, 50),
                height = vim.o.lines - 6,
              }
            end,
          },
        },
      },
      window = {
        position = "float",
      },
    },
  },
}
