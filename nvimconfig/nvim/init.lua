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
--nvim-treesitter配置
require("plugins-config/nvim-treesitter")
--toggleterm配置
require("plugins-config/toggleterm")
--mason配置
require("plugins-config/mason")
--mason-lspconfig配置
require("plugins-config/mason-lspconfig")

--LSP配置
--mason-lspconfig中set_up中ensure_install确保LSP Server安装
--所以这里直接引入了server_configurations.md https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#clangd
require("lsp/lua_ls")
require("lsp/clangd")
require("lsp/pyright")
