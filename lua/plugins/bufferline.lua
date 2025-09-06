return {
	"akinsho/bufferline.nvim",
	config = function()
		require("bufferline").setup({
			options = {
				mode = "buffers",
				diagnostics = "nvim_lsp",
				separator_style = "slant",
				show_buffer_close_icons = false,
				show_close_icon = false,
				always_show_bufferline = true,
				offsets = {
					{ filetype = "Neotree", text = "File Explorer", highlight = "Directory", text_align = "left" },
				},
			},
		})

		-- keymaps for tab/buffer navigation
		vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", { desc = "Next buffer tab" })
		vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Prev buffer tab" })
		vim.keymap.set("n", "<leader>bd", "<cmd>bdelete<CR>", { desc = "Close current buffer" })
		vim.keymap.set("n", "<leader>be", "<cmd>tabnew<CR>", { desc = "Create a new empty buffer" })
		vim.keymap.set("n", "<leader>bo", "<cmd>BufferLineCloseOthers<CR>", { desc = "Close other buffers" })
	end,
}
