return {
  opt = {
    relativenumber = false,
    number = true,
    spell = false,
    signcolumn = "auto",
    wrap = false,
    expandtab = false,
    tabstop = 4,
    shiftwidth = 4,
    colorcolumn = "80,90",
    wichwrap = vim.opt.whichwrap:append("<,>,[,],h,l"),
    termguicolors = true,
  },
  g = {
    mapleader = " ",
    autoformat_enabled = true,
    cmp_enabled = true,
    autopairs_enabled = true,
    diagnostics_enabled = true,
    status_diagnostics_enabled = true,
    icons_enabled = true,
    ui_notifications_enabled = true,
    heirline_bufferline = false,

    moonflyNormalFloat = true,
    moonflyWinSeparator = 2,
  },
}
