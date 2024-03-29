return {
	"mawkler/modicator.nvim",
	dependencies = "catppuccin/nvim", -- Add your colorscheme plugin here
	init = function()
		-- These are required for Modicator to work
		vim.o.cursorline = true
		vim.o.number = true
		vim.o.termguicolors = true
	end,
	opts = {},
	config = function()
		require("modicator").setup()
	end,
}
