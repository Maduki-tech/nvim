vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("", "<C-b>", vim.cmd.NeoTreeFocusToggle)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])


vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])


vim.keymap.set("n", "Q", vim.cmd.x)
vim.keymap.set("n", "<leader>tf", "<cmd>Neoformat <CR>")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/maduki/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

-- Basic window Movement
vim.keymap.set("n", "<leader>d", "<cmd>:vsplit <CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>h", "<cmd>:wincmd h <CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>j", "<cmd>:wincmd j <CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>k", "<cmd>:wincmd k <CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>l", "<cmd>:wincmd l <CR>", { noremap = true, silent = true })
