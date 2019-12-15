let mapleader=" "
syntax on
set nu
set norelativenumber
set cursorline
set wrap
set showcmd
set wildmenu

set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

"关闭兼容vi模式，以至于不失去扩展
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
"鼠标点击有作用
set mouse=a
set encoding=utf-8
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set scrolloff=5
set laststatus=2

inoremap { {}<ESC>i
noremap <LEADER><CR> :nohlsearch<CR>
noremap K 5k
noremap J 5j
noremap H 7h
noremap L 7l
" H key: go to the start of the line
noremap <LEADER>h 0
" L key: go to the end of the line
noremap <LEADER>l $
map s <nop>
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>

map sr :set splitright<CR>:vsplit<CR>
map sl :set nosplitright<CR>:vsplit<CR>
map su :set nosplitbelow<CR>:split<CR>
map sd :set splitbelow<CR>:split<CR>

map <C-l> <C-w>l
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k


map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>


call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'

call plug#end()

colorscheme snazzy
