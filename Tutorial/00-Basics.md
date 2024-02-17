# 00 - Basics

First, make sure vim is installed: `$ vim --version`; If not: `$ sudo apt-get install
vim`. It's recommended to do `$ vimtutor` to learn the basics of Vim.

## Jargon

- `window`: A pane that has a file in it
- `buffer`: An open file
- `fold`: A block of text that can be opened and closed

## Keybinds

Keybinds I either use or that get replaced by a more user-friendly plugin

### Motions

Movin' around

- `<arrows>`: Character-based movement
- `$`: End of line
- `^`: Beginning of line
- `gg`: First line of file
- `G`: Last line of file
- `{`,`}`: Paragraph forward,backward
- `<C-u>`,`<C-d>`: Scroll a half page up,down

### Normal Mode

- `i`,`I`: Insert text before character,line
- `a`,'A': Append text after character,line
- `o`,'O': Insert on new line below,above
- `v`,`<C-v>`: Enter visual,block mode
- `c{motion}`: Change text selected by {motion}, 'cc' changes line
- `:`: Enter command mode
- `<C-w>`: Interact with windows
- `/`,`?`: Search forward,backward
- `n`,`N`: Next,Previous match
- `*`,`#`: Search word under cursor forward,backward
- `x`,`X`: Delete character under,before cursor
- `d{motion}`: Deletes text selected by {motion}, `dd` deletes line
- `y{motion}`: Yank text selected by {motion}, `yy` yanks line
- `p`,`P`: Put yanked text after,before cursor
- `~`: Toggle character case
- `<C-a>`,`<C-x>`: Increment,Decrement number under cursor
- `>>`,`<<`: Indent,Unindent line
- `==`: Auto indent line (Does nothing with python, nothing helpful anyway)
- `.`: Repeat last action
- `u`,`<C-r>`: Undo,Redo
- `za`: Toggle fold under cursor open and close
- `zf`: Create fold, usually text is selected before doing this
- `zd`: Delete fold under cursor

### Command Mode

- `w [file]`: Write [file]
- `q[!]`: Quit [without saving]
- `e {file}`: Edit {file} in current window
- `enew`: Create empty buffer
- `buffers`: List buffers
- `bn`: Cycle to next buffer
- `bp`: Cycle to previous buffer
- `bd`: Delete current buffer

### Insert Mode

Finally some normal text editing

- `<C-o>`: Temporary normal mode

### Visual (Block) Mode

Selecting text. This one gets a bit complicated. You __can__ use any motion to select text, but I'm
gonna show the shortcuts that make life a lot easier. There are two parts to these shortcuts:
<br><br>

Part One: Around and Inside
- `a`: Selects the identifier and the stuff inside
- `i`: Selects only the stuff inside an identifier
<br>

Part Two: The Identifier
- `w`: Word
- `s`: Sentence
- `p`: Paragraph
- `{`: `{ this }`
- `[`: `[ this ]`
- `(`: `( this )`
- `<`: Angle Block
- `t`: HTML Tag
- `'`: Single Quote
- `"`: Double Quote
- `` ` ``: Backtick Quote

### Windows

Windows are panes within Vim that can contain different files

- `s`: Split window horizontally (top, bottom)
- `v`: Split window vertically (left, right)
- `<arrows>`: Move to window in <arrow> direction
- `w`,`W`: Cycle to next,previous window
- `q`: Close window
- `o`: Close other windows
- `=`: Make all windows same width and height
- `+`,`-`: Increase,Decrease window height
- `<`,`>`: Increase,Decrease window width
