return {
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  {
    {
      "nvim-lspconfig",
      opts = {
        diagnostics = {
          virtual_text = false,
        },
      },
    },
  },
}
