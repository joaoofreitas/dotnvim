
-- Setting leader key as space
vim.g.mapleader = " "

-- Openning netrw with space + ff
vim.keymap.set("n", "<leader>ff", vim.cmd.Ex)

-- Windows

vim.keymap.set("n", "<leader>ww", vim.cmd.windo)
vim.keymap.set("n", "<leader>wv", vim.cmd.vsp)
vim.keymap.set("n", "<leader>wh", vim.cmd.sp)
vim.keymap.set("n", "<leader>wq", vim.cmd.close)
