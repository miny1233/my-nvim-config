local status_ok, mason = pcall(require, "mason")

if not status_ok then
    vim.notify("mason don't exists", "warn")
    return
end

local status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")

if not status_ok then
    vim.notify("mason-lspconfig don't exists", "warn")
    return
end

mason.setup({})
mason_lspconfig.setup({
  -- Replace the language servers listed here 
  -- with the ones you want to install
  ensure_installed = {'clangd', 'cmake', 'rust_analyzer' },
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  },
})