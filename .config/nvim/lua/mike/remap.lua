
-- [[ Basic Keymaps ]]
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

vim.keymap.set({ 'i', 'v' }, 'kj', '<Esc>', { noremap = true })
vim.keymap.set({ 'i', 'v', 'n' }, '<C-j>', '<C-w>j', { noremap = true })
vim.keymap.set({ 'i', 'v', 'n' }, '<C-k>', '<C-w>k', { noremap = true })
vim.keymap.set({ 'i', 'v', 'n' }, '<C-h>', '<C-w>h', { noremap = true })
vim.keymap.set({ 'i', 'v', 'n' }, '<C-l>', '<C-w>l', { noremap = true })

vim.keymap.set( 'v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set( 'v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set({ 'n' }, '<leader>tc', ':tabclose<CR>', { noremap = true, silent = true })
