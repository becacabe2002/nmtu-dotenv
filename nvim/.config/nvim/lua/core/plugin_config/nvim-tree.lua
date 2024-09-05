vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup()

vim.keymap.set('n', '<C-n>', ':NvimTreeFindFileToggle<CR>', {noremap = true, silent = true, desc = "Open file explorer"})
