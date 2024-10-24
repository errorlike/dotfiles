return {
  {
    "echasnovski/mini.surround",
    keys = {
      vim.keymap.set("n", ";;;", ";;_", { remap = true }),
    },
    opts = {
      mappings = {
        add = ";;",
        delete = ";d",
        find = ";f",
        find_left = ";F",
        highlight = ";h",
        replace = ";r",
        update_n_lines = ";n",
      },
    },
  },

  {
    "folke/flash.nvim",
    opts = {
      modes = {
        char = {
          keys = { "f", "F", "t", "T" },
        },
      },
    },
  },
}
