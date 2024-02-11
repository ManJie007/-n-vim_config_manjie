local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
    vim.notify("没有找到 nvim-tree")
  return
end

require("nvim-tree").setup {
    renderer = {
        icons = {
            show = {
                file = false,
                folder = false,
                folder_arrow = false,
                git = false,
                modified = false,
                diagnostics = false,
                bookmarks = false,
            },
        },
    },
}
