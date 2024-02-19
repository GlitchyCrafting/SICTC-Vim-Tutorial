# Which Key

Needing to remember a bunch of things is something we try to avoid, so it's time to add a little helper.
I know, a little late being the last tutorial but you gotta learn somehow.
This takes quite a bit of configuration, but start with installing it: `liuchengxu/vim-which-key`.

Set your `timeoutlen` in your options to how long before the menu should pop up in milliseconds, `0` for immediate.

What the menu shows is configured in a dictionary, here's the maps I would use:
```vim
    let g:let g:which_key_map = {}
    let g:which_key_map.f = ['Files' , 'Files']
    let g:which_key_map.p = ['PlugUpdate', 'Update Plugins']
    let g:which_key_map.b = ['Buffers', 'Buffers']
    let g:which_key_map.h = ['Helptags', 'Help']
    let g:which_key_map.m = {
        \ 'name' : '+Markdown',
        \ 'm' : [':CocCommand markdown-preview-enhanced.openPreview', 'Open'],
        \ 's' : [':CocCommand markdown-preview-enhanced.openPreview', 'Open']
        \ }
    let g:which_key_map.y = ['CocList -A --normal yank', 'Yanks']
    let g:which_key_map.g = {
        \ 'name' : '+Goto',
        \ 'd' : ['<Plug>(coc-definition)', 'Definition'],
        \ 't' : ['<Plug>(coc-type-definition)', 'Type Definition'],
        \ 'i' : ['<Plug>(coc-implementation)', 'Impelmentation'],
        \ 'r' : ['<Plug>(coc-references)', 'References']
        \ }
    let g:which_key_map.r = ['<Plug>(coc-rename)', 'Rename']

    call which_key#register('<Space>', "g:which_key_map")
```
Then, bind the menu to your <Space> key:
```vim
    nnoremap <silent> <Space> :WhichKey '<Space>'<CR>
```

You can add more commands based on what you want, just follow that syntax.
Here are some places you can find more commands:
```vim
:help
:help coc-list-sources
:help fzf-vim-commands
```
