# Decreassedness Tediousness

There are things that are just very tedious to to. We can remove some of them
with some plugins.

### Commenting

Commenting out one line is fine, just put the comment key before the line, but
when you need to do that for each and every line you want to comment out. Time
waster, I know. With `tpope/vim-commentary` we can just select the lines we want
and press `gc`, `gcc` without selection, to toggle the comment key. Don't even
need to be at the beginning of a line.

![Commenting](/Assets/Comment.webm)

### Auto-pair

When we type `"` or `{` or, even worse, `"""`, wouldn't it be nice if Vim would
type the match for us? `jiangmiao/auto-pairs` adds this functionality.

![AutoPair](/Assets/AutoPair.webm)

### File Opening

Needing to type `:e {file}` and needing to remember the entire path to the file
is absolutely horrible. We could use a file tree, but we'd still have to
remember where the file is. Let's instead use a fuzzy finder so we only need to
remember bits and peices of the file path. `junegunn/fzf.vim` adds more than
just fuzzy finding files, but many other things too. It also requires
`junegunn/fzf` to be installed to work.

![FZF](/Assets/FZF.webm)

### Editor Syntax Compatibility

Coding styles, the second most heated debate in programming. Tabs vs
Spaces. OTBS vs Stroustrup vs K&R vs ... [just look at this
list](https://www.wikiwand.com/en/Indentation_style). Let's just let Vim
autoconfig itself to other's styles when we open their project with
`editorconfig/editorconfig-vim`. Editorconfig has plugins for most editors so
many companies use it to keep everything consistent.

### [Previous](/Tutorial/04_Pretty_but_Useful.md) <==> [Next](/Tutorial/06_Remember_Which-Key.md)
