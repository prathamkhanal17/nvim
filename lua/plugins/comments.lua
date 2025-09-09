return {
	{
		"numToStr/Comment.nvim",
		lazy = true,
		event = "BufReadPost",
		keys = { "gcc", "gbc", "gc", "gb" },
		opts = {},
		config = function()
			require("Comment").setup({
				padding = true,
				sticky = true,
				ignore = nil,
				toggler = {
					line = "gcc",
					block = "gbc",
				},
				opleader = {
					line = "gc",
					block = "gb",
				},
				extra = {
					above = "gcO",
					below = "gco",
					eol = "gcA",
				},
				mappings = {
					basic = true,
					extra = true,
				},
				pre_hook = nil,
				post_hook = nil,
			})
		end,
	},
	{
		"folke/todo-comments.nvim",
		lazy = true,
		cmd = "TodoTelescope",
		event = "BufReadPre",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
		config = function()
			require("todo-comments").setup()
			vim.keymap.set("n", "]t", function()
				require("todo-comments").jump_next()
			end, { desc = "Next todo comment" })

			vim.keymap.set("n", "[t", function()
				require("todo-comments").jump_prev()
			end, { desc = "Previous todo comment" })
			vim.keymap.set("n", "<leader>tt", "<cmd>TodoTelescope<CR>", { desc = "TodoTelescope" })
		end,
	},
}
