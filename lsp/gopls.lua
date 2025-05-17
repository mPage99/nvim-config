return {
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_markers = {
    "go.work",
    "go.mod",
    ".git",
  },
  single_file_support = true,
  init_options = {
    usePlaceholders = true,
    completeUnimported = true,
    staticcheck = true,
  },
}

