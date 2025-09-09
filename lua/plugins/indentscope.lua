return{ 'nvim-mini/mini.indentscope',
  lazy = true,
  event = "BufReadPost",
  opts = { symbol = "|"},
  version = false,
  config = function ()
   require("mini.indentscope").setup()
  end,

}
