-- 修改leader键
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.wo.relativenumber = true
vim.wo.number = true
-- vim.o.clipboard = "unnamedplus"
-- 缩进的配置
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.o.termguicolors = true
vim.opt.smartindent = true
vim.o.cursorline = true

-- Enable mouse mode
vim.o.mouse = "a"

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = "yes"
-- 启用视觉换行
vim.wo.wrap = true
-- Enable break indent
vim.o.breakindent = true
-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = "*",
})
