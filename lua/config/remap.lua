local M = {}

M.on_attach = function(_, bufnr)
  local map = function(mode, lhs, rhs, desc)
    vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, noremap = true, silent = true, desc = desc })
  end

  -- LSP-related keymaps
  map("n", "K", vim.lsp.buf.hover, "Hover")
  map("n", "gd", vim.lsp.buf.definition, "Go to definition")
  map("n", "gD", vim.lsp.buf.declaration, "Go to declaration")
  map("n", "grr", vim.lsp.buf.references, "List references")
  map("n", "gri", vim.lsp.buf.implementation, "Go to implementation")
  map("n", "go", vim.lsp.buf.type_definition, "Go to type definition")
  map("n", "grn", vim.lsp.buf.rename, "Rename symbol")
  map("n", "gra", vim.lsp.buf.code_action, "Code actions")
  map("n", "<leader>dd", vim.diagnostic.open_float, "Open diagnostics")
end

return M
