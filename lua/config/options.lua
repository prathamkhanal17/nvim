vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set expandtab")
vim.cmd("set clipboard=unnamedplus")

-- Set line numbers based on mode
vim.cmd("set number")
vim.cmd("set relativenumber")

vim.api.nvim_create_autocmd({ "InsertEnter" }, {
  callback = function()
    vim.cmd("set norelativenumber")
  end,
})

vim.api.nvim_create_autocmd({ "InsertLeave" }, {
  callback = function()
    vim.cmd("set relativenumber")
  end,
})
