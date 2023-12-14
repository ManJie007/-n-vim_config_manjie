vim.g.mapleader = ","

--关闭当前窗口
vim.api.nvim_set_keymap("n", "<C-c>", ":q<CR>", {noremap = true, silent = true}) 

--借鉴了unimpaired.vim
vim.api.nvim_set_keymap("n", "[b", ":bprevious<CR>", {noremap = true, silent = true}) 
vim.api.nvim_set_keymap("n", "]b", ":bnext<CR>", {noremap = true, silent = true}) 
vim.api.nvim_set_keymap("n", "[t", ":tprevious<CR>", {noremap = true, silent = true}) 
vim.api.nvim_set_keymap("n", "]t", ":tnext<CR>", {noremap = true, silent = true}) 
vim.api.nvim_set_keymap("n", "[q", ":cprevious<CR>", {noremap = true, silent = true}) 
vim.api.nvim_set_keymap("n", "]q", ":cnext<CR>", {noremap = true, silent = true}) 

-- 多窗口跳转 
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", {noremap = true, silent = true}) 
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", {noremap = true, silent = true}) 
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", {noremap = true, silent = true}) 
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", {noremap = true, silent = true})

--nvim-tree
vim.api.nvim_set_keymap("n", "<leader>n", ":NvimTreeToggle<CR>", {noremap = true, silent = true})

--telescop
vim.api.nvim_set_keymap("n", "<leader>ff", ":Telescope find_files<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>fg", ":Telescope live_grep<CR>", {noremap = true, silent = true})
