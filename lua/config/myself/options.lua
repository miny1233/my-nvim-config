vim.opt.backup = false
vim.opt.hlsearch = true
vim.opt.smartcase = true

vim.opt.showtabline = 2
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.opt.fileencoding = "utf-8"
vim.opt.autoread = true

vim.opt.number = true
vim.opt.relativenumber = true 
vim.opt.numberwidth = 4

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.updatetime = 100

vim.opt.termguicolors = true
vim.opt.wrap = false

vim.opt.cursorline =  true
vim.opt.guicursor = "n-v-c-i:block,r-cr:hor20,o:hor50"

vim.opt.mouse = "r"
vim.opt.hidden = true

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false

vim.cmd.filetype({"plugin", "on"})

vim.lsp.inlay_hint.enable(true, nil) 
