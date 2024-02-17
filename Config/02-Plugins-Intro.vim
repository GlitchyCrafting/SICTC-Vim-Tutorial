set nocompatible
set backspace=2
set ruler
set scrolloff=5
set number
set relativenumber
set cursorline
set noexpandtab
set smarttab
set autoindent
set wrap
set textwidth=80
set tabstop=4
set shiftwidth=4
set softtabstop=-1
set formatoptions=crqn1
set nobackup
set writebackup
set undofile
set noswapfile
set history=50
set splitright
set splitbelow
set foldmethod=indent
set mouse=

set termguicolors
call plug#begin()

Plug 'catppuccin/vim'

call plug#end()

colorscheme catppuccin_mocha
