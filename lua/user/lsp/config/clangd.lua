return {
  cmd = {
    "clangd",
    -- "--all-scopes-completion",
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
}
