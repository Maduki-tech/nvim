local status_ok, notify = pcall(require, "notify")
if not status_ok then
    return
end

local icons = require "maduki.icons"

notify.setup {
    stages = "fade",
    on_open = nil,
    on_close = nil,
    render = "default",
    timeout = 175,
    -- background_colour = "Normal",
    minimum_width = 10,
    icons = {
        ERROR = icons.diagnostics.Error,
        WARN = icons.diagnostics.Warning,
        DEBUG = icons.ui.Bug,
        TRACE = icons.ui.Pencil,
    },
}
vim.notify = notify
local notify_filter = vim.notify
vim.notify = function(msg, ...)
    if msg:match "character_offset must be called" then
        return
    end
    if msg:match "method textDocument" then
        return
    end
    if msg:match "tailwindcss" then
        return
    end

    notify_filter(msg, ...)
end
