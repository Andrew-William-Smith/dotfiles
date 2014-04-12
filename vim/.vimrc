set nocompatible

filetype on
filetype plugin on
filetype indent on
syntax on
set hidden
set showmode
set number
set cursorline
set t_Co=256
set encoding=utf-8
let g:seoul256_background=235
colorscheme seoul256
set background=dark
set foldmethod=manual
execute pathogen#infect()
set backspace=indent,eol,start
set hlsearch
set incsearch

autocmd VimEnter * ColorHighlight
