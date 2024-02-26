# Basic Keybindings

### Getting Around

Vim has many motions to help you get around faster.
Most motions accept an optional count to preform it multiple times (eg. `4<Left>` will go left 4 times).
The simplest way to move around is the arrow keys. Many people say to only use
`hjkl` but I never found them to be faster, especially when not using QWERTY.

<!-- Insert QWERTY vs Colemak comparison -->

Here's some more motions:
```vim
$     " Takes you to the end of a line
^     " Takes you to the beginning of a line
gg    " Takes you to the first line in the file
G     " Takes you to the last line in the file
{     " Takes you one paragraph backward
}     " Takes you one paragraph forward
<C-u> " Scroll half a page up
<C-d> " Scroll half a page down
```

### Changing Modes

Vim is a mode-based editor, this means you have different modes that allow you
to do different things. When you open Vim, you always[^1] start in Normal Mode.

[^1]: There is a startup option that changes the behavior to be Insert Mode
    focused.

Here are the other modes and common ways to get to them from Normal Mode:
- Insert:
    - This is how you type in text
    - `i`: Before cursor
    - `I`: Start of line
    - `a`: After cursor
    - `A`: End of line
    - `o`: New line below
    - `O`: New line above
- Command: `:`
    - Allows you to enter Vim commands
- Visual: `v`
    - Text selection
- Visual-Block: `<C-v>`
    - Text selection, but blockwise (hard to explain, just try it)
- Replace: `R`
    - Insert mode, but overwrites existing text. Doing this by accident is very
      frustrating.

> [!IMPORTANT]
> If all else fails, spam <Esc> to get yourself back into Normal Mode

### Modifying Text

Other than Insert and Replace mode, the other modes can also modify text.
Any key pressed twice only has to be pressed once when in Visual Mode.

```vim
x " Delete character under cursor
X " Delete chasacter before cursor
d{motion} " Deletes many characters based on a motion
dd " Deletes a whole line
```

### Searching

```vim
/ " Search forward
? " Search backward
n " Next match
N " Previous match
```

### Yanky Pastey

```vim
y{motion} " Yanks text based on motion
yy        " Yanks current line
p         " Pastes after cursor
P         " Pastes before cursor
```

### Undo Redo

```vim
u     " Undo
<C-r> " Redo
```

### Commands

```vim
:w [file] " Writes current file or [file]
:q[!] " Quits [without saving]
:e {file} " Edit {file}
:enew " New, empty file
:term " Opens a terminal
```

### [Previous](/Tutorial/00_Prerequisites.md) <==> [Next](/Tutorial/02_Setting_your_Settings.md)
