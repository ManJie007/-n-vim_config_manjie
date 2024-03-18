-- 插件快捷键
local pluginKeys = {}

vim.g.mapleader = ","

--关闭当前窗口
vim.api.nvim_set_keymap("n", "<C-c>", ":q<CR>", {noremap = true, silent = true}) 

--保存文件
vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("i", "<C-s>", "<C-o>:w<CR>", {noremap = true, silent = true})

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
vim.api.nvim_set_keymap("n", "<leader>fs", ":Telescope grep_string<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>fh", ":Telescope help_tags<CR>", {noremap = true, silent = true})


-- Telescope 列表中 插入模式快捷键
pluginKeys.telescopeList = {
  i = {
    -- 关闭窗口
    ["<C-c>"] = "close",
    -- 预览窗口上下滚动
    ["<C-u>"] = "preview_scrolling_up",
    ["<C-d>"] = "preview_scrolling_down",
  },
}

--toggleterm
vim.api.nvim_set_keymap("n", "<leader>t", ":TermSelect<CR>", {noremap = true, silent = true}) 

--symbols-outline
vim.api.nvim_set_keymap("n", "<leader>s", ":SymbolsOutline<CR>", {noremap = true, silent = true})

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})

return pluginKeys
