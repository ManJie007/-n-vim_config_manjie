neovim配置

插件管理使用lazy.nvim

basic.lua 基本配置
keybinds.lua 快捷键配置
lazy\_nvim.lua 配置插件管理器lazy.nvim

lua目录下配置需要安装的插件
gruvbox.lua 主题
nvim-tree.lua 文件树
telescope.lua 模糊查找
nvim-treesitter.lua  代码高亮

由于我不想安装Nerd Font
我在lazy\_nvim.lua 中设置
If you don't want to use a Nerd Font, you can replace the icons with Unicode symbols.
{
  ui = {
    icons = {
      cmd = "⌘",
      config = "🛠",
      event = "📅",
      ft = "📂",
      init = "⚙",
      keys = "🗝",
      plugin = "🔌",
      runtime = "💻",
      require = "🌙",
      source = "📄",
      start = "🚀",
      task = "📌",
      lazy = "💤 ",
    },
  },
}

在nvim-tree.lua中设置
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

在mason.lua中设置
mason.setup({
    ui = {
        icons = {
            package\_installed = "✓",
            package\_pending = "➜",
            package\_uninstalled = "✗"
        }
    }
})
