-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader  = ";"
vim.g.maplocalleader = ""


-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- colorschemes
    { 'morhetz/gruvbox' },

    -- clangd extension
    -- { "p00f/clangd_extensions.nvim" },

    -- lsp, completion and other enhence
    { 'VonHeikemen/lsp-zero.nvim', branch = 'v4.x' },
    { "williamboman/mason.nvim", version = "1.10.0" },
    { "williamboman/mason-lspconfig.nvim", version = "1.10.0" },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/nvim-cmp' },
    { 'hrsh7th/cmp-nvim-lsp'                },
    { 'hrsh7th/cmp-buffer'                  },
    { 'hrsh7th/cmp-path'                    },
    { 'hrsh7th/cmp-cmdline'                 },
    { 'hrsh7th/nvim-cmp'                    },
    { 'hrsh7th/cmp-nvim-lsp-signature-help' },
    { 'hrsh7th/cmp-nvim-lsp-document-symbol'},
    { 'saadparwaiz1/cmp_luasnip'            },

    -- git enhence
    {
        'tanvirtin/vgit.nvim', version = "0.2.3",
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    -- quick find
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        dependencies = { {'nvim-lua/plenary.nvim'} }
    },

    -- some snippet
    { 'L3MON4D3/LuaSnip', version = "2.3.0"},
    { 'rafamadriz/friendly-snippets'},

    -- highlight and symbols
    { 'nvim-treesitter/nvim-treesitter', tag = "v0.9.2"},
    { 'windwp/nvim-autopairs'},

      -- git intergation
    { "lewis6991/gitsigns.nvim", versino = "0.9.0"},

      -- file explorer
      {
          "nvim-neo-tree/neo-tree.nvim", version = "3.26",
          dependencies = { 
              "nvim-lua/plenary.nvim",
              "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
              "MunifTanjim/nui.nvim",
          }
      },

      -- terminal
      { "akinsho/toggleterm.nvim" },

      -- symbols outline
      {
        "hedyhli/outline.nvim", version = "1.0.0",
      },

      {
          'akinsho/bufferline.nvim', version = "4.7.0",
          dependencies = {'kyazdani42/nvim-web-devicons'}
      },

      -- beautiful statesline
      {
          "nvim-lualine/lualine.nvim",
          dependencies = { 'kyazdani42/nvim-web-devicons', opt = true }
      },

      -- cmake tool
      { 'Civitasv/cmake-tools.nvim',
        dependencies = {
          "nvim-lua/plenary.nvim",
          'stevearc/overseer.nvim',
          "akinsho/toggleterm.nvim",
        }
      },

      -- background task visualizer
      { 'stevearc/overseer.nvim' },

      -- fuzzy find
      -- use "junegunn/fzf"
      -- use "junegunn/fzf.vim"

      -- make UI more beautiful
      { 'stevearc/dressing.nvim' },
      { 'rcarriga/nvim-notify' },

      -- git diffview
      { 'sindrets/diffview.nvim', dependencies = 'nvim-lua/plenary.nvim' },
  },
})