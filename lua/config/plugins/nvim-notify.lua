local status_ok, notify = pcall(require, 'notify')

if not status_ok then
    vim.notify("notify plugin not exists");
    return
end


notify.setup {
    stages = 'fade_in_slide_out',
    background_colour = 'FloatShadow',
    timeout = 3000,
}
vim.notify = notify