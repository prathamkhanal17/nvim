return {
  {
    "williamboman/mason.nvim",
    lazy = true,
    event = { "BufReadPost", "BufWinEnter"},
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = true,
    event = { "BufReadPost", "BufWinEnter"},
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "pyright" },
      })
      vim.keymap.set("n", "<leader>cm", "<cmd>Mason<CR>", { desc = "Mason" })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = true,
    event = { "BufReadPost", "BufWinEnter"},
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      lspconfig.lua_ls.setup({

        capabilities = capabilities,
      })
      lspconfig.pyright.setup({

        capabilities = capabilities,
      })
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
      vim.diagnostic.config({ virtual_text = true })
      -- grr for references, gra for code actions, grn for rename , gri for implementation default
    end,
  },
}
