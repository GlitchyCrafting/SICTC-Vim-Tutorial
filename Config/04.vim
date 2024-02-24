set nocompatible
set backspace=2
set wrap
set showbreak=+++
set autoindent
set smarttab
set nobackup
set writebackup
set undofile
set noswapfile
set encoding=utf-8
set noexpandtab
set tabstop=4
set softtabstop=-1
set shiftwidth=0
set formatoptions=rqn1
set textwidth=80
set ruler
set number
set relativenuber
set scrolloff=5
set cursorline
set cursorcolumn
set mouse=
set termguicolors
set t_Co=256
set list lcs=tab:\|\

call plug#begin()

Plug 'catppuccin/vim'

Plug 'vim-airline/vim-airline'

call plug#end()

colorscheme catppuccin_mocha
