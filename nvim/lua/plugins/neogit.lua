return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim", -- required
    "sindrets/diffview.nvim", -- optional - Diff integration

    -- Only one of these is needed.
    "nvim-telescope/telescope.nvim", -- optional
  },
  keys = {
    { "<leader>gg", "<cmd>Neogit<cr>", desc = "Neogit (Root dir)" },
    -- { "<leader>gG", "<cmd>Neogit<cr>", desc = "Neogit (cwd)" },
    opts = {
      graph_style = "kitty",
    },
    event = "VeryLazy",
  },
}
