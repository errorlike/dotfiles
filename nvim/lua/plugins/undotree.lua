return {
  "mbbill/undotree",
  config = function()
    vim.g.undotree_SetFocusWhenToggle = 1
    vim.keymap.set("n", "<F5>", vim.cmd.UndotreeToggle, { desc = "undotree" })
  end,
}
