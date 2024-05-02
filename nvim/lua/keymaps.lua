vim.keymap.set("n", "<leader>/", ":nohl<Enter>", { silent = true })
-- Navigate vim panes better
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set({ "n", "v" }, "J", "10j")
vim.keymap.set({ "n", "v" }, "K", "10k")
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "q:", "<nop>")
vim.keymap.set("n", "q?", "<nop>")
vim.keymap.set("n", "q/", "<nop>")
vim.keymap.set("n", "<Enter>", "i<Enter><Esc>")
vim.keymap.set("n", "<leader>j", "J")
-- Add empty lines before and after cursor line
vim.keymap.set("n", "gO", "<Cmd>call append(line('.') - 1, repeat([''], v:count1))<CR>")
vim.keymap.set("n", "go", "<Cmd>call append(line('.'),     repeat([''], v:count1))<CR>")

vim.keymap.set("n", "<leader>la", "<cmd>Lazy<cr>", { desc = "Lazy" })

vim.keymap.set({ "n", "v" }, "<leader>y", [["*y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set("n", "<leader>p", [["*p]])
vim.keymap.set("n", "<leader>P", [["*P]])

vim.keymap.set("n", "<A-j>", ":m .+1<CR>==") -- move line up(n)
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==") -- move line down(n)
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv") -- move line up(v)
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv") -- move line down(v)
