local status_ok, telescope = pcall(require, "telescope")
local builtin = require('telescope.builtin')


if not status_ok then
    return
end
telescope.setup {
    defaults = {
        file_sorter = require("telescope.sorters").get_fzy_sorter,
        prompt_prefix = " >",
        color_devicons = true,
        file_ignore_patterns = {
            "node_modules",
            ".git",
            "lib",
        },
        mappings = {
            i = {
                ["<C-d>"] = false
            }
        },
        extensions = {
            fzf = {
                fuzzy = true, -- false will only do exact matching
                override_generic_sorter = true, -- override the generic sorter
                override_file_sorter = true, -- override the file sorter
                case_mode = "smart_case" -- or "ignore_case" or "respect_case"
                -- the default case_mode is "smart_case"
           }
        }
    }
}

require("telescope").load_extension("fzf")
-- ADD Telescope shortcuts
vim.keymap.set('n', '<leader>fl', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

vim.api.nvim_set_keymap(
    "n",
    "<leader><space>",
    [[<cmd>lua require('telescope.builtin').buffers()<CR>]],
    {noremap = true, silent = true}
)
vim.api.nvim_set_keymap(
    "n",
    "<leader>fs",
    [[<cmd>lua require('telescope.builtin').find_files()<CR>]],
    {noremap = true, silent = true}
)

vim.api.nvim_set_keymap(
    "n",
    "<leader>fb",
    [[<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]],
    {noremap = true, silent = true}
)
vim.api.nvim_set_keymap(
    "n",
    "<leader>fh",
    [[<cmd>lua require('telescope.builtin').help_tags()<CR>]],
    {noremap = true, silent = true}
)

vim.api.nvim_set_keymap(
    "n",
    "<leader>fg",
    [[<cmd>lua require('telescope.builtin').git_branches()<CR>]],
    {noremap = true, silent = true}
)

vim.api.nvim_set_keymap(
    "n",
    "<leader>so",
    [[<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>]],
    {noremap = true, silent = true}
)
vim.api.nvim_set_keymap("n", "<leader>ft", [[:TodoTelescope<CR>]], {noremap = true, silent = true})

vim.api.nvim_set_keymap(
    "n",
    "<leader>fp",
    [[<cmd>lua require('telescope.builtin').builtin()<CR>]],
    {noremap = true, silent = true}
)
