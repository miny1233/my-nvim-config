local keymap = vim.api.nvim_set_keymap

vim.g.mapleader  = "'"
vim.g.maplocalleader = ""

opts = {noremap = true, silent = true}
keymap('n', "<C-h>", "<C-w>h", opts)
keymap('n', "<C-j>", "<C-w>j", opts)
keymap('n', "<C-k>", "<C-w>k", opts)
keymap('n', "<C-l>", "<C-w>l", opts)
keymap('n', '<C-n>', ":bnext<CR>", opts)

keymap('n', "[b", ":BufferLineCycleNext<CR>", opts)
keymap('n', "b]", ":BufferLineCyclePrev<CR>", opts)
keymap('n', "<leader>be", ":BufferLineSortByExtension<CR>", opts)
keymap('n', "<leader>bd", ":BufferLineSortByDirectory<CR>", opts)

keymap('n', "<leader>t", ":NvimTreeToggle<CR>", opts)
keymap('n', "<leader>s", ":SymbolsOutline<CR>", opts)
