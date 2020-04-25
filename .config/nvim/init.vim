let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Experimental settings
" set autoindent
set expandtab
" set filetype indent on
set shiftwidth=4
set smarttab
set tabstop=4
set softtabstop=4
set ignorecase
set incsearch
set hlsearch
syntax enable
set ruler
set number
set visualbell
set title
set wildmenu
set history=100
set foldmethod=indent
set foldnestmax=1
set termguicolors
set cursorline
set showcmd
set showmatch
set foldenable
set foldlevelstart=0

"
" VIM PLUG SPECIFIC SETTINGS BELOW
"
" colorscheme solarized
" let g:airline_theme='solarized'

" Vim-Plug
call plug#begin('~/.local/share/nvim/plugged')

" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'airblade/vim-gitgutter'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'tpope/vim-sensible'
" Plug 'pearofducks/ansible-vim'
" Plug 'altercation/vim-colors-solarized'

call plug#end()
