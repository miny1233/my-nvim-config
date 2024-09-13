local status_ok, notify = pcall(require, 'notify')

if not status_ok then
    vim.notify("notify plugin not exists", "warn");
    return
end


notify.setup {
    stages = 'slide',
    background_colour = 'FloatShadow',
    timeout = 3000,
}
vim.notify = notify