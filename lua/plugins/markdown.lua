return {
	"MeanderingProgrammer/render-markdown.nvim",
	lazy = true,
	ft = "markdown",
	config = function()
		require("render-markdown").setup()
	end,
}
