return {
  {
    "catppuccin/nvim",
    lazy = true,
    event = "VimEnter",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
      })
      vim.cmd("colorscheme catppuccin")
    end,
  },
}
