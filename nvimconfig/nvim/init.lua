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
--smart-splits配置
--还要配置~/.tmux.conf 
--# Smart pane switching with awareness of Vim splits.
--# See: https://github.com/christoomey/vim-tmux-navigator
--is_vim="ps -o state= -o comm= -t '#{pane_tty}' \
--    | grep -iqE '^[^TXZ ]+ +(\\S+\\/)?g?(view|n?vim?x?)(diff)?$'"
--bind-key -n C-h if-shell "$is_vim" 'send-keys C-h'  'select-pane -L'
--bind-key -n C-j if-shell "$is_vim" 'send-keys C-j'  'select-pane -D'
--bind-key -n C-k if-shell "$is_vim" 'send-keys C-k'  'select-pane -U'
--bind-key -n C-l if-shell "$is_vim" 'send-keys C-l'  'select-pane -R'
--
--bind-key -n M-h if-shell "$is_vim" 'send-keys M-h' 'resize-pane -L 3'
--bind-key -n M-j if-shell "$is_vim" 'send-keys M-j' 'resize-pane -D 3'
--bind-key -n M-k if-shell "$is_vim" 'send-keys M-k' 'resize-pane -U 3'
--bind-key -n M-l if-shell "$is_vim" 'send-keys M-l' 'resize-pane -R 3'
--
--tmux_version='$(tmux -V | sed -En "s/^tmux ([0-9]+(.[0-9]+)?).*/\1/p")'
--if-shell -b '[ "$(echo "$tmux_version < 3.0" | bc)" = 1 ]' \
--    "bind-key -n 'C-\\' if-shell \"$is_vim\" 'send-keys C-\\'  'select-pane -l'"
--if-shell -b '[ "$(echo "$tmux_version >= 3.0" | bc)" = 1 ]' \
--    "bind-key -n 'C-\\' if-shell \"$is_vim\" 'send-keys C-\\\\'  'select-pane -l'"
--
--bind-key -T copy-mode-vi 'C-h' select-pane -L
--bind-key -T copy-mode-vi 'C-j' select-pane -D
--bind-key -T copy-mode-vi 'C-k' select-pane -U
--bind-key -T copy-mode-vi 'C-l' select-pane -R
--bind-key -T copy-mode-vi 'C-\' select-pane -l
require("plugins-config/smart-splits")
--symbol-outline配置
require("plugins-config/symbols-outline")
