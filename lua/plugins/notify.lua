return {
	"rcarriga/nvim-notify",
	lazy = true,
	event = "VimEnter",
	config = function()
		require("notify").setup({
			timeout = 1000,
      background_colour = "#000000",
			top_down = false,
			stages = "fade",
			max_height = 10,
			opacity = 0.5,
			render = "compact",
			level_icons = {
				ERROR = "",
				WARN = "",
				INFO = "",
				DEBUG = "",
				TRACE = "✎",
			},
		})
		vim.keymap.set("n", "<leader>nh", "<cmd>Telescope notify<CR>", { desc = "Show notification history" })
	end,
}
