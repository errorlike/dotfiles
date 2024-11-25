-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Remap K and J
vim.keymap.set({ "n", "v" }, "<leader>j", "J", { desc = "Join lines" })
-- Perusing code faster with K and J
vim.keymap.set({ "n", "v" }, "K", "10gk", { desc = "Up faster" })
vim.keymap.set({ "n", "v" }, "J", "10gj", { desc = "Down faster" })

vim.keymap.set("i", "jk", "<ESC>", { silent = true, desc = "<ESC>" })

vim.keymap.set({ "n", "v" }, "<leader>y", [["*y]], { desc = "copy to clipboard" })
vim.keymap.set("n", "<leader>p", [["*p]], { desc = "paste from clipboard" })
vim.keymap.set("n", "<leader>P", [["*P]], { desc = "paste from clipboard" })
vim.keymap.set("n", "<leader>cb", ":cd %:p:h<CR>", { desc = "cd to current buffer" })

-- Add empty lines before and after cursor line
vim.keymap.set("n", "gO", "<Cmd>call append(line('.') - 1, repeat([''], v:count1))<CR>")
vim.keymap.set("n", "go", "<Cmd>call append(line('.'),     repeat([''], v:count1))<CR>")
