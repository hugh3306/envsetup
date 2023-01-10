require("diffview").setup()

vim.keymap.set({ 'n' }, '<leader>dv', ':DiffviewOpen<CR>', { noremap = true, silent = true })
vim.keymap.set({ 'n' }, '<leader>dc', ':DiffviewClose<CR>', { noremap = true, silent = true })
