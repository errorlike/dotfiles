return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	opts = {
		window = {
			mappings = {
				["Y"] = function(state)
					local node = state.tree:get_node()
					local filepath = node:get_id()
					local filename = node.name
					local modify = vim.fn.fnamemodify

					local results = {
						filepath,
						modify(filepath, ":."),
						modify(filepath, ":~"),
						filename,
						modify(filename, ":r"),
						modify(filename, ":e"),
					}

					vim.ui.select({
						"1. Absolute path: " .. results[1],
						"2. Path relative to CWD: " .. results[2],
						"3. Path relative to HOME: " .. results[3],
						"4. Filename: " .. results[4],
						"5. Filename without extension: " .. results[5],
						"6. Extension of the filename: " .. results[6],
					}, { prompt = "Choose to copy to clipboard:" }, function(choice)
						local i = tonumber(choice:sub(1, 1))
						local result = results[i]
						vim.fn.setreg('"', result)
						vim.notify("Copied: " .. result)
					end)
				end,
			},
		},
	},
	config = function(_, opts)
		require("neo-tree").setup(opts)
		vim.keymap.set("n", "<leader>e", ":Neotree filesystem reveal left toggle<CR>", { silent = true })
		vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", { silent = true })
	end,
}
