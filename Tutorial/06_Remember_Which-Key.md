# Remember Which-Key

Vim has many commands and we only added more with our plugins, so let's have
a menu condense them into short sequences of keys. Start by installing
`liuchengxu/vim-which-key`.

In your settings, set `timeoutlen=0` so the menu shows up immediately.

Now, let's add some bindings:
```vim
let g:which_key_map = {}
let g:which_key_map.f = ['Files' , 'Files']
let g:which_key_map.p = ['PlugUpdate', 'Update Plugins']
let g:which_key_map.c = ['PlugClean', 'Clean Plugins']
let g:which_key_map.b = ['Buffers', 'Buffers']
let g:which_key_map.h = ['Helptags', 'Help']
let g:which_key_map.t = ['terminal', 'Terminal']

call which_key#register('<Space>', "g:which_key_map")
```

Then, bind it to the space bar when you're in normal mode:
```vim
nnoremap <silent> <Space> :WhichKey '<Space>'<CR>
```

<!-- TODO: example -->

You make more keybindings yourself, here's where you can find more commands:
```vim
:help fzf-vim-commands
:help ex-commands
:help quickref
```

### [Previous](/Tutorial/05_Decreasedness_Tediousness.md) <==> [Next](/Tutorial/07_Advanced_Keybindings.md)
