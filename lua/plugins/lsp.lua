return {
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    keys = {
      {
        "<leader>e",
        vim.diagnostic.open_float,
        desc = "Show diagnostics (errors/warnings)"
      },
      {
        "<leader>df",
        vim.diagnostic.goto_next,
        desc = "Show diagnostics (errors/warnings)"
      },
      {
        "<leader>dd",
        vim.diagnostic.goto_prev,
        desc = "Show diagnostics (errors/warnings)"
      },
    },
  },
  {
    "williamboman/mason.nvim",
    config = true
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "gopls" }, -- auto-installs lua server
      })
    end,
  },
}

