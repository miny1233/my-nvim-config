local status_ok, neotree = pcall(require, 'neo-tree')

if not status_ok then
    vim.notify("neo-tree plugin not exists")
end