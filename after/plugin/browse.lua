local status_ok, browse = pcall(require, "browse")
if not status_ok then
  return
end

-- WARN: NOT WORKING
local bookmarks = {
    ["github"] = {
        ["name"] = "search github from neovim",
        ["code_search"] = "https://github.com/search?q=%s&type=code",
        ["repo_search"] = "https://github.com/search?q=%s&type=repositories",
        ["issues_search"] = "https://github.com/search?q=%s&type=issues",
        ["pulls_search"] = "https://github.com/search?q=%s&type=pullrequests",
    },
}

browse.setup {
  provider = "google",
}


local function command(name, rhs, opts)
  opts = opts or {}
  vim.api.nvim_create_user_command(name, rhs, opts)
end

command("BrowseInputSearch", function()
  browse.input_search()
end, {})

command("Browse", function()
  browse.browse { bookmarks = bookmarks }
end, {})

command("BrowseBookmarks", function()
  browse.open_bookmarks { bookmarks = bookmarks }
end, {})

command("BrowseDevdocsSearch", function()
  browse.devdocs.search()
end, {})

command("BrowseDevdocsFiletypeSearch", function()
  browse.devdocs.search_with_filetype()
end, {})

command("BrowseMdnSearch", function()
  browse.mdn.search()
end, {})

local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>bi", "<cmd>BrowseInputSearch<cr>", opts)
keymap("n", "<leader>bm", "<cmd>BrowseMdnSearch<cr>", opts)
