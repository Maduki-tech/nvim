local M = {}
function M.setup()
    require("neo-tree").setup({
        auto_close = true,
        open_on_setup = true,
        disable_netrw = true,
        hijack_netrw = true,
        update_cwd = true,
        update_focused_file = {
            enable = true,
            update_cwd = true,
            ignore_list = {},
        },
        system_open = {
            cmd = nil,
            args = {},
        },
        view = {
            width = 30,
            side = "right",
            auto_resize = false,
            mappings = {
                custom_only = false,
                list = {},
            },
        },
        event_handlers = {

            {
                event = "file_opened",
                handler = function()
                    --auto close
                    require("neo-tree").close_all()
                end
            },

        }
    })
end

return M
