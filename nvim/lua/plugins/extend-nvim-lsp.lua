-- LSP keymaps
return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ["*"] = {
        keys = {
          { "K", false },
          { "gr", false },
          { "gh", vim.lsp.buf.hover, desc = "Hover" },
          { "gR", vim.lsp.buf.references, desc = "References", nowait = true },
        },
      },
    },
  },
}
