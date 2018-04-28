set nocompatible

set number
set relativenumber

" use 4 spaces for indent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set autoindent
set smartindent

set ignorecase
set smartcase
set scrolloff=3

let mapleader=","
nmap <leader>p :PrettierAsync<CR>
nmap <leader>n :noh<CR>

if has ("autocmd")
    filetype plugin indent on
endif

" disable arrow keys
noremap <left> <nop>
inoremap <left> <nop>
noremap <right> <nop>
inoremap <right> <nop>
noremap <up> <nop>
inoremap <up> <nop>
noremap <down> <nop>
inoremap <down> <nop>

" split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" terminal navigation
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
autocmd BufWinEnter,WinEnter term://* startinsert

" nerdtree
map <leader>t :NERDTreeToggle<CR>
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd w
autocmd BufWinEnter * NERDTreeMirror

" reduce update time for gitgutter
set updatetime=100

call plug#begin('~/.vim/plugged')

" functionality
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'editorconfig/editorconfig-vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'airblade/vim-gitgutter'

" layout
Plug 'scrooloose/nerdtree'

" colors
Plug 'iCyMind/NeoSolarized'
Plug 'ayu-theme/ayu-vim'

" languages
Plug 'udalov/kotlin-vim'
Plug 'elixir-lang/vim-elixir'
Plug 'aklt/plantuml-syntax'

call plug#end()

" colors
let g:gitgutter_override_sign_column_highlight = 0
let ayucolor="dark"
set termguicolors
set background=dark
colorscheme ayu
