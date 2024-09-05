local builtin = require('telescope.builtin')

vim.keymap.set('n', '<C-p>', builtin.find_files, {noremap = true, silent = true, desc = "Find files in current directory"})
vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, {noremap = true, silent = true, desc = "Recent files"})
vim.keymap.set('n', '<Space>fg', builtin.live_grep, {noremap = true, silent = true, desc = "Open telescope for live grep"})
vim.keymap.set('n', '<Space>fh', builtin.help_tags, {noremap = true, silent = true, desc = "Open telescope for help with tags"})
-- to scroll up/down in telescope preview: using <C-u>/<C-d>
