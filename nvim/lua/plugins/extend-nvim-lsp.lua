-- LSP keymaps
return {
  "neovim/nvim-lspconfig",
  opts = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    -- disable a keymap
    keys[#keys + 1] = { "K", false }
    keys[#keys + 1] = { "K", false }
    keys[#keys + 1] = { "gr", false }
    keys[#keys + 1] = { "gh", vim.lsp.buf.hover, desc = "Hover" }
    keys[#keys + 1] = { "gR", vim.lsp.buf.references, desc = "References", nowait = true }
  end,
}
