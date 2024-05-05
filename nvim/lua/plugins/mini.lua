return {
	"echasnovski/mini.ai",
	version = false,
	event = "VeryLazy",
	opts = function()
		local ai = require("mini.ai")
		return {
			custom_textobjects = {
				e = function() -- Whole buffer, similar to `gg` and 'G' motion
					local from = { line = 1, col = 1 }
					local to = {
						line = vim.fn.line("$"),
						col = math.max(vim.fn.getline("$"):len(), 1),
					}
					return { from = from, to = to }
				end,
			},
		}
	end,
	config = function(_, opts)
		require("mini.ai").setup(opts)
	end,
}
