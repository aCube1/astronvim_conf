return function()
  vim.api.nvim_create_autocmd("BufEnter", {
    pattern = { "*.s", "*.asm", "*.i", "*.inc" },
    callback = function(ev)
      vim.api.nvim_buf_set_option(ev.buf, "filetype", "asm_ca65")
    end,
  })

  vim.api.nvim_create_autocmd("FileType", {
    pattern = { "asm", "nasm", "masm", "asm_ca65" },
    callback = function(ev)
      vim.bo[ev.buf].autoindent = false

      vim.bo[ev.buf].expandtab = true
      vim.bo[ev.buf].shiftwidth = 2
      vim.bo[ev.buf].tabstop = 2
    end,
  })
end
