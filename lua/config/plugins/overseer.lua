local status_ok, overseer = pcall(require, 'overseer')

if not status_ok then
    vim.notify("overseer plugin is not exists", "warn")
    return
end

overseer.setup()

