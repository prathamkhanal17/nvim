return{ 'nvim-mini/mini.indentscope',
  opts = { symbol = "|"},
  version = false,
  config = function ()
   require("mini.indentscope").setup()
  end,

}
