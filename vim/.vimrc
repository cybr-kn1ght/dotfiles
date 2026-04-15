" ==== Basic Settings ====
set bg=dark
set nocompatible
set encoding=utf-8
syntax on
filetype plugin indent on

" ==== UI ====
set number
set relativenumber
set showcmd
set laststatus=2

" ==== Cursor Shapes ====
" normal mode: block; insert: beam; replace: underline
let &t_SI = "\e[5 q"
let &t_EI = "\e[2 q"
let &t_SR = "\e[4 q"

" ==== Tabs & Indentation ====
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent

" ==== Search ====
set ignorecase
set smartcase
set incsearch
set hlsearch

" ==== Editing ====
set backspace=indent,eol,start
set mouse=a

" ==== Performance ====
set updatetime=300
set timeoutlen=500

" ==== Window Splits ==="
set splitbelow splitright
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
