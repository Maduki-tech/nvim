require("lint").linters_by_ft = {
    markdown = {"vale"},
    typescript = {"eslint"},
    typescriptreact = {"eslint"},
    javascript = {"eslint"},
    javascriptreact = {"eslint"}
}
vim.api.nvim_create_autocmd({ "BufReadPost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
