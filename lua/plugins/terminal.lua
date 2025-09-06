return {
	"akinsho/toggleterm.nvim",
	version = "*",
	opts = {
		direction = "float",
		float_opts = {
			border = "curved",
			width = function()
				return math.floor(vim.o.columns * 0.6)
			end,
			height = function()
				return math.floor(vim.o.lines * 0.6)
			end,
		},
		start_in_insert = true,
		persist_size = true,
		close_on_exit = true,
	},
	config = function(_, opts)
		require("toggleterm").setup(opts)

		vim.keymap.set({ "n", "t" }, "<C-t>", "<cmd>ToggleTerm<cr>", {
			desc = "Toggle terminal",
		})
	end,
}
