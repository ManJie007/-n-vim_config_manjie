local status, treesitter = pcall(require, "nvim-treesitter")
if not status then
    vim.notify("没有找到 nvim-treesitter")
    return
end

treesitter.setup({
    -- 安装 language parser
    -- :TSInstallInfo 命令查看支持的语言
    ensure_installed = { "lua", "c", "cpp", "python"},
    -- 启用代码高亮模块
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    -- 启用代码缩进模块 (=)
    indent = {
        enable = true
    }
})
