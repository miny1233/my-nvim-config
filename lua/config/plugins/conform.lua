local status_ok, conform = pcall(require, 'conform')

if not status_ok then
    vim.notify("conform is not exists", "warn")
    return
end

conform.setup {
    formatters_by_ft = {
        lua = { "stylua" },
        cpp = { 'clang-format'},
        -- Conform will run multiple formatters sequentially
        python = { "isort", "black" },
        -- You can customize some of the format options for the filetype (:help conform.format)
        rust = { "rustfmt", lsp_format = "fallback" },
        -- Conform will run the first available formatter
        javascript = { "prettierd", "prettier", stop_after_first = true },
    },
}

vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"

local opts = { buffer = bufnr, noremap = true, silent = true }
vim.keymap.set('n', '==',
function()
    conform.format({ async = true, lsp_format = "fallback", range = nil})
end, opts)