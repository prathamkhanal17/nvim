local map = vim.keymap.set
map('i', 'jk', '<Esc>', { desc = "press jk for escape" })
map({ 'n', 'i' }, '<C-s>', '<cmd>w<CR>', { desc = "write buffer" })
map('n', '<leader>q', '<cmd>q<CR>', { desc = "quit buffer" })
map('n', '<leader>Q', '<cmd>qa!<CR>', { desc = "force quit all" })
map('n', '<leader>-', '<cmd>split<CR>', { desc = "split horizontally" })
map('n', '<leader>|', '<cmd>vsplit<CR>', { desc = "split vertically" })
map('n', '<leader>wl', '<C-w>l', { desc = "Switch focus to right window" })
map('n', '<leader>wj', '<C-w>j', { desc = "Switch focus to lower window" })
map('n', '<leader>wk', '<C-w>k', { desc = "Switch focus to upper window" })
map('n', '<leader>wh', '<C-w>h', { desc = "Switch focus to left window" })
-- TODO: Add some more generic keymaps
