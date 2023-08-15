-- Setting leader key as space
vim.g.mapleader = " "

-- Openning netrw with space + ff
vim.keymap.set("n", "<leader>ff", vim.cmd.Ex)

-- Window Handling
--
vim.keymap.set("n", "<leader>w", '<c-w>')
vim.keymap.set("n", "<leader>wv", vim.cmd.vsp)
vim.keymap.set("n", "<leader>wn", vim.cmd.sp)
vim.keymap.set("n", "<leader>wq", vim.cmd.close)

-- Saving Buffer
vim.keymap.set("n", "<leader>bs", vim.cmd.w)

-- Next and previous buffer
vim.keymap.set("n", "<leader>bn", vim.cmd.bnext)
vim.keymap.set("n", "<leader>bp", vim.cmd.bprev)

