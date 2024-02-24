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

Plug 'tpope/vim-commentary'
Plug 'jiangmia/auto-pairs'
Plug 'junegunn/fzf.vim'
Plug 'editorconfig/editorconfig-vim'

Plug 'liuchengxu/vim-which-key'

call plug#end()

colorscheme catppuccin_mocha

let g:which_key_map = {}
let g:which_key_map.f = ['Files' , 'Files']
let g:which_key_map.p = ['PlugUpdate', 'Update Plugins']
let g:which_key_map.c = ['PlugClean', 'Clean Plugins']
let g:which_key_map.b = ['Buffers', 'Buffers']
let g:which_key_map.h = ['Helptags', 'Help']
let g:which_key_map.t = ['terminal', 'Terminal']

call which_key#register('<Space>', "g:which_key_map")

nnoremap <silent> <Space> :WhichKey '<Space>'<CR>
