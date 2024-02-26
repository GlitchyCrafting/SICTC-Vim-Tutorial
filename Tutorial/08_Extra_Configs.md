# Extra Configs

Vim has many more options to set, but sometimes you need some to only run on
certain files. To do this we use `autocmd`s. Here's the basic syntax:
```vim
au Event 'pattern' command
```

We need Vim to recognize Typescript (ts) files as Javascript (js) files to get
proper syntax highlighting. Here's the `autocmd` to do that:
```vim
au BufRead,BufNew '*.ts' set filetype=javascript
" When a buffer is read or created with the 'ts' extention, set the filetype to js
```

Currently, we don't need any more `autocmd`s so that's the only one I'll show,
but you can make more with the documentation:
```vim
:help autocmd
```

### [Previous](/Tutorial/07_Advanced_Keybindings.md) <==> [Next](/Tutorial/09_Conclusion_and_Beyond.md)
