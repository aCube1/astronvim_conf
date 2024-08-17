local pipepath = "/tmp/godot.pipe" -- Path to Godot pipe, default: "/tmp/godot.pipe"

vim.lsp.start {
  name = "godot",
  cmd = vim.lsp.rpc.connect("127.0.0.1", 6005),
  filetypes = { "gd", "gdscript" },
  root_dir = vim.fs.dirname(vim.fs.find({ "project.godot", ".git" }, { upward = true })[1]),
  -- on_attach = function(_, _) vim.fn.serverstart(pipepath) end,
}
