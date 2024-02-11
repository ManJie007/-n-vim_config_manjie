local status, lspconfig = pcall(require, "lspconfig")
if not status then
    vim.notify("没有找到 nvim-lspconfig")
  return
end

lspconfig.lua_ls.setup{}
lspconfig.pyright.setup {}
lspconfig.clangd.setup {}
