local status, toggleterm = pcall(require, "toggleterm")
if not status then
    vim.notify("没有找到 nvim-treesitter")
    return
end

toggleterm.setup({
    open_mapping = [[<c-\>]],
    start_in_insert = true,
    direction = 'float',
})
