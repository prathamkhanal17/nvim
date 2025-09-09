return {
  "nvimtools/none-ls.nvim",
  lazy = true,
  event = "BufReadPost",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua.with({ filetypes = { "lua" } }),
        null_ls.builtins.formatting.black.with({ filetypes = { "python" } }),
        null_ls.builtins.formatting.prettier.with({
          filetypes = { "javascript", "typescript", "css", "html", "json", "markdown" },
        }),
      },
    })
    vim.keymap.set("n", "<leader>cf", function()
      vim.lsp.buf.format({ async = true })
    end, { desc = "Format code" })
  end,
}
