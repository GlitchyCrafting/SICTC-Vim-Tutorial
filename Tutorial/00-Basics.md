# 00 - Basics

First, make sure vim is installed: `$ vim --version`; If not: `$ sudo apt-get install
vim`. It's recommended to do `$ vimtutor` to learn the basics of Vim.

## Jargon

```
window - A pane that has a file in it
buffer - An open file
fold - A block of text that can be opened and closed
```

## Keybinds

Keybinds I either use or replace with a more user-friendly plugin. Learning them
will slowly remove the need to use the mouse over time. You can find more
keybinds by typing `:help quickref`.

### Motions


```vim
    <arrow> " Character-based movement
    $       " End of line
    ^       " Beginning of line
    gg      " First line of file
    G       " Last line of file
    {       " Paragraph forward
    }       " Paragraph backward
    <C-u>   " Scroll half a page up
    <C-d>   " Scroll a half page down
```

### Normal Mode

```vim
iI        " Insert text before character,line
aA        " Append text after character,line
oO        " Insert on new line below,above
v         " Enter visual mode
<C-v>     " Enter visual block mode
c{motion} " Change text selected by {motion}, 'cc' changes line
:         " Enter command mode
<C-w>     " Interact with windows
/         " Search forward
?         " Search Backward
n         " Next match
N         " Previous match
*         " Search word under cursor forward
#         " Search word under cursor backward
x         " Delete character under cursor
X         " Delete character before cursor
d{motion} " Deletes text selected by {motion}, `dd` deletes line
y{motion} " Yank text selected by {motion}, `yy` yanks line
p         " Put yanked text after cursor
P         " Put yanked text before cursor
~         " Toggle character case
<C-a>     " Increment number under cursor
<C-x>     " Decrement number under cursor
>>        " Indent line
<<        " Unindent line
==        " Auto indent line (Does nothing with python, nothing helpful anyway)
.         " Repeat last action
u         " Undo
<C-r>     " Redo
za        " Toggle fold under cursor open and close
zA        " Toggle fold under cursor open and close, including sub-folds
zf        " Create fold, usually text is selected before doing this
zd        " Delete fold under cursor
zx        " Refresh folds, useful if foldmethod=indent
```

### Command Mode

```vim
:w [file] " Write [file]
:q[!]     " Quit [without saving]
:e {file} " Edit {file} in current window
:enew     " Create empty buffer
:buffers  " List buffers
:bn       " Cycle to next buffer
:bp       " Cycle to previous buffer
:bd       " Delete current buffer
:term     " Open terminal
```

### Insert Mode

```vim
<C-o> " Temporary normal mode
```

### Visual (Block) Mode

Selecting text. This one gets a bit complicated. You __can__ use any motion to select text, but I'm
gonna show some extra motions that make life a lot easier. There are two parts to these motions:

Part One: Around and Inside
```vim
a " Selects the identifier and the stuff inside
i " Selects only the stuff inside an identifier
```

Part Two: The Identifier
```vim
w " Word
s " Sentence
p " Paragraph
{ " { this }
[ " [ this ]
( " ( this )
< " Angle Block
t " HTML Tag
' " Single Quote
" " Double Quote
` " Backtick Quote
```

Combining these (ex. `aw`, `it`) results in faster and easier text selection
than using the mouse.

### Windows

```vim
s       " Split window horizontally (top, bottom)
v       " Split window vertically (left, right)
<arrow> " Move to window in <arrow> direction
w       " Cycle to next window
W       " Cycle to previous window
q       " Close window
o       " Close other windows
=       " Make all windows same width and height
+       " Increase window height
-       " Decrease window height
>       " Increase window width
<       " Decrease window width
```
