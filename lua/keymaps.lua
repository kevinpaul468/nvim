vim.g.mapleader = " "
vim.keymap.set("n","<leader>e",":NvimTreeToggle<CR>",{noremap=true, silent=true})
vim.keymap.set("n","<leader>pv",":Ex<CR>",{noremap=true, silent=true})
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
vim.keymap.set('n', '<C-s>', ":set spell!<CR>")
