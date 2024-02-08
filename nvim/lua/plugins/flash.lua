return {
	"folke/flash.nvim",
	event = "VeryLazy",
	vscode = true,
	opts = {
		modes = {
			char = {
				enabled = false,
			},
		},
	},
    -- stylua: ignore
    keys = {
        { "gs",    mode = { "n", "x", "o" }, function() require("flash").jump() end,   desc = "Flash" },
        { "<c-s>", mode = { "c" },           function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
}
