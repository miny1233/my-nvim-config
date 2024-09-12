local status_ok, trouble = pcall(require, 'trouble')

if not status_ok then
    vim.notify("trouble plugin is not exists")
    return
end

trouble.setup {}