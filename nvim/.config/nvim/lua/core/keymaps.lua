vim.g.mapleader = ' ' --[[ Leader key is <Space>--]]
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>', {noremap = true, silent = true, desc = "Hide search results"})
vim.keymap.set('n', 'M', ':Mason<CR>', {noremap = true, silent = true, desc = "Open Mason"})
