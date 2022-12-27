
require("nvim-tree").setup()

vim.keymap.set({ 'n' }, '<leader>b', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
