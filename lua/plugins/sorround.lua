return {
	{
		"kylechui/nvim-surround",
		lazy = true,
		event = "BufReadPost",
		version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
		dependencies = {},
		config = function()
			require("nvim-surround").setup({})
		end,
	},
	{
		"windwp/nvim-autopairs",
		lazy = true,
		event = "InsertCharPre",
		config = function()
			require("nvim-autopairs").setup()
		end,
	},
}

