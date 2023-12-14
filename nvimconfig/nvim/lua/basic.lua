-- 设置文件编码格式为 utf-8
vim.g.encoding = "utf-8"
-- 设置终端编码格式为 utf-8
vim.o.termencoding = "utf-8"
-- 开启语法高亮
vim.o.syntax = "enable"
-- 显示行号
vim.o.number = true
-- 高亮所在行
vim.o.cursorline = true
-- 自动换行
vim.o.wrap = true
-- 显示光标位置
vim.o.ruler = true
-- 搜索大小写不敏感
vim.o.ignorecase = true
-- 边输入边搜索
vim.o.incsearch = true
-- 开启搜索匹配高亮
vim.o.hlsearch = true

-- tab键转换为 4 个空格
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
-- 新行对齐当前行，tab转换为空格
vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

-- << >> 缩进时移动的长度
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4

-- 使用jk移动光标时，上下方保留8行
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

-- 设置自动折叠
vim.o.smartindent = true
-- 样式
vim.o.background = "dark"
vim.o.termguicolors = true
vim.opt.termguicolors = true

-- 补全增强
vim.o.wildmenu = true

-- 使用增强状态栏插件后不再需要 vim 的模式提示
vim.o.showmode = false

-- 永远显示 tabline
vim.o.showtabline = 2

-- 允许隐藏被修改过的buffer
vim.o.hidden = true

-- 自动补全不自动选中
vim.g.completeopt = "menu,menuone,noselect,noinsert"
