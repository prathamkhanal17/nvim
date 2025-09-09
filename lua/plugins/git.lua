return {
	{
		"lewis6991/gitsigns.nvim",
		lazy = true,
		event = "BufReadPost",
		config = function()
			require("gitsigns").setup()
			vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk_inline<CR>", { desc = "Git preview hunk inline" })
			vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", { desc = "Git preview hunk inline" })
			vim.keymap.set("n", "<leader>gs", ":Telescope git_status<CR>", { desc = "Fuzzy find git status" })
		end,
	},
}
