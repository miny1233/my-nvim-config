local status_ok, outline = pcall(require, 'outline')

if not status_ok then
    return
end

vim.keymap.set("n", "<leader>o", "<cmd>Outline<CR>",
            { desc = "Toggle Outline" })

outline.setup {
-- Your setup opts here (leave empty to use defaults)
}