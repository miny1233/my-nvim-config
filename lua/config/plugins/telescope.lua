local status_ok, telescope = pcall(require, 'telescope')

if not status_ok then
    vim.notify("telescope plugin is not exists", "warn")
    return
end

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fm', builtin.marks, {})

-- integrate with trouble
local open_with_trouble = require("trouble.sources.telescope").open

telescope.setup({
  defaults = {
    mappings = {
      i = { ["<c-d>"] = open_with_trouble },
      n = { ["<c-d>"] = open_with_trouble },
    },
  },
})
