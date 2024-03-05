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

Let's do another. Having `spell` enabled all the time is annoying, but it's helpful for Markdown files. To automatically enable `spell` for Markdown files:
```vim
au BufRead,BufNew '*.md' setlocal spell
" We use setlocal that way it's only set for the Markdown file and not our other open files
```

Currently, we don't need any more `autocmd`s,
but you can make more with the documentation:
```vim
:help autocmd
```

### [Previous](/Tutorial/07_Advanced_Keybindings.md) <==> [Next](/Tutorial/09_Conclusion_and_Beyond.md)
