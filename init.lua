vim.opt.termguicolors = true

require "config.lazy"
require "config.plugins.keymaps"
require "config.plugins.nvim-notify"    -- make notify import firstly to show pretty notifies
require "config.plugins.dressing"
require "config.plugins.lsp_zero"
require "config.plugins.lspconfig"
require "config.plugins.mason"
require "config.plugins.cmp"
require "config.plugins.telescope"
require "config.plugins.treesitter"
require "config.plugins.autopairs"
require "config.plugins.gitsigns"
require "config.plugins.neo-tree"
require "config.plugins.outline"
require "config.plugins.lualine"
require "config.plugins.bufferline"
-- require "user.fzf"
require "config.plugins.toggleterm"
require "config.plugins.neovide"
require "config.plugins.overseer"
require "config.plugins.cmake-tools"
require "config.plugins.trouble"

require "config.myself.options"
require "config.myself.filetype"

vim.cmd [[colorscheme gruvbox]]
