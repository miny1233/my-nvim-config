vim.opt.termguicolors = true

require "config.lazy"
require "config.plugins.keymaps"
require "config.plugins.lspconfig"  -- use mason.nvim to config it
require "config.plugins.mason"
require "config.plugins.cmp"
require "config.plugins.telescope"
-- require "config.plugins.treesitter" -- update config, forbid repeat download
require "config.plugins.autopairs"
-- require "config.plugins.gitsigns" -- update config
require "config.plugins.neo-tree"
require "config.plugins.outline"
require "config.plugins.lualine"
require "config.plugins.bufferline"
-- require "user.fzf"
require "config.plugins.vgit"
require "config.plugins.toggleterm"
require "config.plugins.neovide"
require "config.plugins.overseer"
require "config.plugins.cmake-tools"
require "config.plugins.dressing"
require "config.plugins.nvim-notify"

require "config.myself.options"
require "config.myself.buildsystem"
require "config.myself.filetype"
require "config.myself.format"

vim.cmd [[colorscheme gruvbox]]
