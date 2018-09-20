call plug#begin('~/.vim/plugged')

" editing
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

" format
Plug 'editorconfig/editorconfig-vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" files
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" layout
Plug 'scrooloose/nerdtree'
Plug 'woelke/vim-nerdtree_plugin_open'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'

" theme
Plug 'ayu-theme/ayu-vim'

" languages
Plug 'w0rp/ale'
Plug 'udalov/kotlin-vim'
Plug 'elixir-lang/vim-elixir'
Plug 'aklt/plantuml-syntax'
Plug 'leafgarland/typescript-vim'
Plug 'mattn/emmet-vim'

call plug#end()
