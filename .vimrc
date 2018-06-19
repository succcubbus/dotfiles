set nocompatible

set number
set relativenumber

if has ("autocmd")
    filetype plugin indent on
endif

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

" autosave
autocmd FocusLost * silent! update
set autowriteall

" layout
set scrolloff=3
set colorcolumn=120

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
tnoremap <Esc> <C-\><C-n>
" autocmd BufWinEnter,WinEnter term://* startinsert

" custom mappings
let mapleader=","
nmap <leader>p :PrettierAsync<CR>
nmap <leader>n :noh<CR>

" nerdtree
map <leader>tt :NERDTreeToggle<CR>
map <leader>tf :NERDTreeFind<CR>
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd w
let NERDTreeMinimalUI=1
let g:NERDTreeWinSize=40
let g:nerdtree_plugin_open_cmd = 'xdg-open'

" language client
" set hidden
" let g:LanguageClient_serverCommands = {
"     \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
"     \ }
" 
" nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
" nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
" nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
" nnoremap <silent> ,f :call LanguageClient#textDocument_formatting()<CR>

" split resizing
nnoremap <silent> ,sj :res -5<CR>
nnoremap <silent> ,sk :res +5<CR>
nnoremap <silent> ,sh :vert res -5<CR>
nnoremap <silent> ,sl :vert res +5<CR>

" reduce update time for gitgutter
set updatetime=250

" autosave
set autowrite
autocmd FocusLost * silent! update

call plug#begin('~/.vim/plugged')

" functionality
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'editorconfig/editorconfig-vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf'

" layout
Plug 'scrooloose/nerdtree'
Plug 'woelke/vim-nerdtree_plugin_open'

" colors
Plug 'iCyMind/NeoSolarized'
Plug 'ayu-theme/ayu-vim'
Plug 'sickill/vim-monokai'

" languages
Plug 'udalov/kotlin-vim'
Plug 'elixir-lang/vim-elixir'
Plug 'aklt/plantuml-syntax'
Plug 'w0rp/ale'
" Plug 'autozimu/LanguageClient-neovim', {
"     \ 'branch': 'next',
"     \ 'do': 'bash install.sh',
"     \ }
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

call plug#end()

" colorscheme
let g:gitgutter_override_sign_column_highlight = 0
let ayucolor="dark"
set termguicolors
set background=dark
colorscheme ayu
