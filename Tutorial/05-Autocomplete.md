# Autocomplete

Tired of typing in so many things? Searching through documentation to find methods and properties?
Well, I have the plugin just for you! Or rather many, many, plugins.

1. `sudo apt-get install yarn`
2. Add your sources, yes all of them
```vim
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
```
3. Add your keybinds in post-config
```vim
    inoremap <silent><expr> <TAB>
        \ coc#pum#visible() ? coc#pum#next(1) :
        \ CheckBackspace() ? "\<Tab>" :
        \ coc#refresh()
    inoremap <expr> <S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

    inoremap <silent><expr> <S-CR> coc#pum#visible() ? coc#pum#confirm() :
        \ "\<C-g>u\<CR>\<C-r>=coc#on_enter()\<CR>"

    function! CheckBackspace() abort
        let col = col('.') - 1
        return !col || getline('.')[col - 1] =~# '\s'
    endfunction

    inoremap <silent><expr> <C-@> coc#refresh()
```

Here's what the keybinds do:
```vim
<TAB>   " Scrolls down one entry
<S-TAB> " Scrolls up one entry
<S-CR>  " Confirms completion
<C-@>   " Force-shows completion menu
```

Now you have basic autocomplete for `css`,`html`,`markdown`,`python`,`bash`, and `typescript`.
