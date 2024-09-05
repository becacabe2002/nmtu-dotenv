vim.opt.termguicolors = true
-- local builtin = require('bufferline')

require('bufferline').setup{}

vim.keymap.set('n', '<leader>1', '<Cmd>BufferLineGoToBuffer 1<CR>', {noremap = true, silent = true, desc = "First buffer in BufferLine"})
vim.keymap.set('n', '<leader>2', '<Cmd>BufferLineGoToBuffer 2<CR>', {noremap = true, silent = true, desc = "Second buffer in BufferLine"})
vim.keymap.set('n', '<leader>3', '<Cmd>BufferLineGoToBuffer 3<CR>', {noremap = true, silent = true, desc = "Third buffer in BufferLine"})
vim.keymap.set('n', '<leader>4', '<Cmd>BufferLineGoToBuffer 4<CR>', {noremap = true, silent = true, desc = "Forth buffer in BufferLine"})
vim.keymap.set('n', '<leader>5', '<Cmd>BufferLineGoToBuffer 5<CR>', {noremap = true, silent = true, desc = "Fifth buffer in BufferLine"})
vim.keymap.set('n', '<leader>6', '<Cmd>BufferLineGoToBuffer 6<CR>', {noremap = true, silent = true, desc = "Sixth buffer in BufferLine"})
vim.keymap.set('n', '<leader>7', '<Cmd>BufferLineGoToBuffer 7<CR>', {noremap = true, silent = true, desc = "Seventh buffer in BufferLine"})
vim.keymap.set('n', '<leader>b]', '<Cmd>BufferLineCycleNext<CR>', {noremap = true, silent = true, desc = "Next buffer"})
vim.keymap.set('n', '<leader>b[', '<Cmd>BufferLineCyclePrev<CR>', {noremap = true, silent = true, desc = "Prev buffer"})
vim.keymap.set('n', '<leader>bp', '<Cmd>BufferLinePick<CR>', {noremap = true, silent = true, desc = "Open buffer picker"})
vim.keymap.set('n', '<leader>bP', '<Cmd>BufferLinePickClose<CR>', {noremap = true, silent = true, desc = "Close buffer picker"})

