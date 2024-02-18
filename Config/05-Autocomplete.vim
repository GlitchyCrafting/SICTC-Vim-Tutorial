" Options
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
set encoding=utf-8
set updatetime=300
set signcolumn=yes

" Plugin Preload Configs
let g:polyglot_disabled = ['sensible']
set list lcs=tab:\|\ 
filetype plugin indent on

" Plugins
call plug#begin()

" Colorschemes
Plug 'catppuccin/vim'

" Visual Help
Plug 'sheerun/vim-polyglot'
Plug 'ap/vim-css-color'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Tedious things
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'editorconfig/editorconfig-vim'

" Autocomplete
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'neoclide/coc-css', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-html', { 'do': 'yarn install --frozen-lockfile' }
Plug 'yaegassy/coc-htmldjango', { 'do': 'yarn install --frozen-lockfile' }
Plug 'yaegassy/coc-html-css-support', { 'do': 'yarn install --frozen-lockfile' }
Plug 'fannheyward/coc-markdownlint', { 'do': 'yarn install --frozen-lockfile' }
Plug 'weirongxu/coc-markdown-preview-enhanced', { 'do': 'yarn install --frozen-lockfile' }
Plug 'weirongxu/coc-webview', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-prettier', { 'do': 'yarn install --frozen-lockfile' }
Plug 'fannheyward/coc-pyright', { 'do': 'yarn install --frozen-lockfile' }
Plug 'josa42/coc-sh', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-tsserver', { 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-yank', { 'do': 'yarn install --frozen-lockfile' }

call plug#end()

" Plugin Configs
colorscheme catppuccin_mocha

" Coc Config
inoremap <silent><expr> <TAB>
			\ coc#pum#visible() ? coc#pum#next(1) :
			\ CheckBackspace() ? "\<Tab>" :
			\ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
			\: "\<C-g>u\<CR>\<C-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1] =~# '\s'
endfunction

inoremap <silent><expr> <c-@> coc#refresh()
