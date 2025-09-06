return {
  "AckslD/swenv.nvim",
  config = function()
    local map = vim.keymap.set
    local swenv = require("swenv")
    swenv.setup({
      venvs_path = vim.fn.expand("~/venvs"),
      post_set_venv = function()
        local client = vim.lsp.get_clients({ name = "ruff" })[1]
        if not client then
          return
        end
        local venv = require("swenv.api").get_current_venv()
        if not venv then
          return
        end
        local venv_python = venv.path .. "/bin/python"
        if client.settings then
          client.settings =
              vim.tbl_deep_extend("force", client.settings, { python = { pythonPath = venv_python } })
        else
          client.config.settings =
              vim.tbl_deep_extend("force", client.config.settings, { python = { pythonPath = venv_python } })
        end
        client.notify("workspace/didChangeConfiguration", { settings = nil })
      end,
    })
    map("n", "<leader>vp", function()
      require("swenv.api").pick_venv()
    end, { desc = "Pick virtual env" })
    map("n", "<leader>vg", function()
      require("swenv.api").get_venv()
    end, {})
    map("n", "<leader>vs", function()
      require("swenv.api").set_venv("venv_fuzzy_name")
    end, {})
  end,
}
