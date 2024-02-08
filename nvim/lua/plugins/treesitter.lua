return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
		},
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				ensure_installed = { "c", "go", "lua", "bash" },
				auto_install = true,
				sync_install = false,
				modules = {},
				ignore_install = {},
				highlight = { enable = true },
				indent = { enable = true },
				incremental_selection = {
					enable = true,
					keymaps = {
						init_selection = "<A-Right>",
						node_incremental = "<A-Right>",
						node_decremental = "<A-Left>",
					},
				},
			})
		end,
	},
}
