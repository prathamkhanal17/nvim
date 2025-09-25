return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("neo-tree").setup({
        window = {
          position = "right",
          width = 30,
        },

        filesystem = {
          follow_current_file = { enabled = true },
          hijack_netrw_behavior = "open_default",
          filtered_items = {
            hide_dotfiles = false,
            hide_gitignored = true,
            never_show = { ".git" },
          },
          window = {
            position = "right",
            width = 30,
          },
        },

        event_handlers = {
          {
            event = "file_opened",
            handler = function(_file_path)
              require("neo-tree.command").execute({ action = "close" })
            end,
          },
        },

        close_if_last_window = false,
        popup_border_style = "rounded",
      })

      vim.keymap.set(
        "n",
        "<leader>e",
        ":Neotree filesystem toggle right<CR>",
        { desc = "Toggle file explorer (Neo-tree right)" }
      )
    end,
  },
}
