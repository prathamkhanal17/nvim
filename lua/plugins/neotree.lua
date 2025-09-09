return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		lazy = true,
    keys = {"<leader>e"},
	ranch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("neo-tree").setup({
				event_handlers = {

					{
						event = "file_open_requested",
						handler = function()
							-- auto close
							-- vim.cmd("Neotree close")
							-- OR
							require("neo-tree.command").execute({ action = "close" })
						end,
					},
				},
				window = { width = 25 },
			})
			vim.keymap.set("n", "<leader>e", "<cmd>Neotree filesystem reveal right<CR>", { desc = "File explorer" })
		end,
	},
}
