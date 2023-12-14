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
