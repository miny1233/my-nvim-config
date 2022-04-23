require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.lspconfig"
require "user.cmp"
require "user.clangd_extension"
require "user.telescope"
require "user.treesitter"
require "user.autopairs"
require "user.gitsigns"
require "user.tree"
require "user.symbolsoutline"
require "user.bufferline"

vim.cmd [[colorscheme gruvbox]]
vim.background=dark

-- vim.cmd [[set statusline+=%{get(b:,'gitsigns_status','')}]]
