set nocompatible

set number
set relativenumber

" use 4 spaces instead of tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

set scrolloff=3

" nerdtree
map <C-n> :NERDTreeFind<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

call plug#begin('~/.vim/plugged')
Plug 'udalov/kotlin-vim'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
call plug#end()
