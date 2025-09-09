return {
	"ellisonleao/gruvbox.nvim",
	lazy = true,
	event = "VimEnter",
	-- priority = 1000,
	config = function()
		require("gruvbox").setup({
			contrast = "hard",
		})
		vim.cmd("colorscheme gruvbox")
	end,
	opts = ...,
}
