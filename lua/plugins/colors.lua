return{
  { 'norcalli/nvim-colorizer.lua',
  config = function ()
   require("colorizer").setup()
   vim.keymap.set("n", "<leader>sc", "<cmd>ColorizerToggle<CR>", {desc="starts colorizer"})
  end,
},
}
