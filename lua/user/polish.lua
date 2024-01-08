return function()
  vim.api.nvim_create_autocmd({ "BufRead", "BufEnter", "BufWinEnter" }, {
    pattern = { "*.s", "*.inc" },
    callback = function(ev)
      vim.api.nvim_buf_set_option(ev.buf, "filetype", "gbz80")
    end,
  })

  vim.api.nvim_create_autocmd({ "BufRead", "BufEnter", "BufWinEnter" }, {
    pattern = { "*.nasm" },
    callback = function(ev)
      vim.api.nvim_buf_set_option(ev.buf, "filetype", "nasm")
    end,
  })

  vim.api.nvim_create_autocmd({ "BufRead", "BufEnter", "BufWinEnter" }, {
    pattern = { "*.vert", "*.frag" },
    callback = function(ev)
      vim.api.nvim_buf_set_option(ev.buf, "filetype", "glsl")
    end,
  })
end
