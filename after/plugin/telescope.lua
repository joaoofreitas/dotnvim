local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>.', builtin.find_files, {})
vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
vim.keymap.set('n', '<leader>ss', builtin.git_files, {})
vim.keymap.set('n', '<leader>sp', builtin.live_grep, {})
vim.keymap.set('n', '<leader>sb', builtin.buffers, {})
