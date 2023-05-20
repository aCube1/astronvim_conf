return {
  cmd = {
    "clangd",
    "--background-index",
    "--clang-tidy",
    "--completion-style=bundled",
    "--cross-file-rename",
    "--header-insertion=iwyu",
    "--malloc-trim",
  },
  capabilities = {
    offsetEncoding = "utf-8",
  },
}
