return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim", -- required
    "sindrets/diffview.nvim", -- optional - Diff integration
    "ibhagwan/fzf-lua",
  },
  keys = {
    { "<leader>gg", "<cmd>Neogit<cr>", desc = "Neogit (Root dir)" },
  },
  opts = {
    graph_style = "ascii",
  },
}
