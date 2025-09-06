--BUG: mason not working  
return {
	{
		"williamboman/mason.nvim",
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "ruff", "pyright" },
			})
			vim.keymap.set("n", "<leader>cm", "<cmd>Mason<CR>", { desc = "Mason" })
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			--		lspconfig.pyright.setup({
			--			capabilities = capabilities,
			--		})
			lspconfig.lua_ls.setup({

				capabilities = capabilities,
			})
			lspconfig.ruff.setup({

				capabilities = capabilities,
			})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to definition" })
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
			vim.diagnostic.config({
				virtual_text = true,
			})
		end,
	},
}
