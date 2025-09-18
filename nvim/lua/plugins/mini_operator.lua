return {
  "nvim-mini/mini.operators",
  version = "*",
  opts = {
    sort = { prefix = "" },
    evaluate = { prefix = "" },
    exchange = { prefix = "" },
    vim.keymap.set({ "n", "v" }, "<leader>gr", '"*gr', { remap = true, desc = "replace from clipboard" }),
  },
}
