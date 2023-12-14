set number
set nocompatible
syntax on
set showmode
set showcmd
set encoding=utf-8
set t_Co=256
filetype indent on
set autoindent
set expandtab
set softtabstop=4
set shiftwidth=4
set cursorline
set textwidth=80
set wrap
set linebreak
set wrapmargin=2
set scrolloff=5
set laststatus=2
set  ruler
set showmatch
set hlsearch
set incsearch
set ignorecase
set nobackup
set noswapfile
set autoread

"zsh的自动补全菜单
set wildmenu
set wildmode=full

filetype on
filetype plugin on
filetype indent on

"借鉴了unimpaired.vim
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [t :tprevious<CR>
nnoremap <silent> ]t :tnext<CR>
nnoremap <silent> [q :cprevious<CR>
nnoremap <silent> ]q :cnext<CR>

"可视模式下的*、#
xnoremap * :<C-u>call <SID>VSetSearch('/')<CR>/<C-R>=@/<CR><CR>
xnoremap # :<C-u>call <SID>VSetSearch('?')<CR>?<C-R>=@/<CR><CR>
function! s:VSetSearch(cmdtype)
	let temp = @s
	norm! gv"sy
	let @/ = '\V' . substitute(escape(@s, a:cmdtype.'\'), '\n', '\\n', 'g')
	let @s = temp
endfunction

"参考amix/vimrc
"Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"关闭当前窗口
nnoremap <C-c> :q<CR>

"Gtags
map <C-\>^] :GtagsCursor<CR>

"leader
let mapleader = ","

"映射文件树到ctrl + n
nnoremap <leader>n :NERDTreeToggle<CR>

"映射Tagbar到, + n
nnoremap <leader>t :TagbarToggle<CR>

"映射fzf的:Files到, + o
nnoremap <leader>o :Files<CR>
"映射fzf的:RG到, + f
nnoremap <leader>f :RG<CR>

"setup color-scheme
set background=dark
autocmd vimenter * ++nested colorscheme gruvbox

"airline
let g:airline#extensions#tabline#enabled = 1

call plug#begin()
"appearance
Plug 'rafi/awesome-vim-colorschemes'
"line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"file system explorer for the Vim editor
Plug 'preservim/nerdtree'

"tag
"tagbar
Plug 'majutsushi/tagbar'

"fzf
" If installed using Homebrew on Apple Silicon
Plug '/opt/homebrew/opt/fzf'
Plug 'junegunn/fzf.vim'

"When combined with a set of tmux key bindings, the plugin will allow you to
"navigate seamlessly between vim and tmux splits using a consistent set of
"hotkeys.
Plug 'christoomey/vim-tmux-navigator'
call plug#end()
