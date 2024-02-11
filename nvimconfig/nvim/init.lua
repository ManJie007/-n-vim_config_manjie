require("basic") 
require("keybinds")

--插件管理器
require("lazy_nvim")
require("lazy").setup("plugins", {
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
})

--gruvbox配置
require("plugins-config/gruvbox")
--nvim-tree配置
require("plugins-config/nvim-tree")
--telescope.lua配置
require("plugins-config/telescope")
--nvim-treesitter配置
require("plugins-config/nvim-treesitter")
--toggleterm配置
require("plugins-config/toggleterm")
--nvim-lspconfig配置
require("plugins-config/nvim-lspconfig")
--nvim-cmp配置
require("plugins-config/nvim-cmp")
