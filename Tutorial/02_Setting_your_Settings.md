# Setting your Settings

Everyone likes to make things their own eventually, that's part of why Vim
exists, It's Vi IMproved; Vi didn't have any customisability, you got what you
got and that was it.

### Setting the Settings

There are two types of settings in Vim: `boolean` and `variable`.

```vim
set option=value " Sets a variable option
set option " Sets a boolean to true
set nooption " Sets a boolean to false
```

We set these in our `~/.vimrc`. Create it and edit it, adding whatever settings
you want.

### Settings I Set

These are the options I like, feel free to change to your liking.

#### Becoming Modern

```vim
set nocompatible " This is Vim not Vi, we don't want to be Vi
set backspace=2 " For some reason backspace acts funny, this fixes it
set wrap " Really long lines would go way off the screen without this
set showbreak=+++  " Adds a visual the let you know this line is wrapped
set autoindent " Remember last indent level when going to new line
set smarttab " Tabs are no longer weird when inserting and deleting
set nobackup " Don't save a backup of our file, that wastes space
set writebackup " Make backup only during write and delete it after
set undofile " Now if you close Vim, you can still undo what you did
set noswapfile " Swapfiles are annoying and you should save more often
set encoding=utf-8 " We live in the modern era for a modern encoding
```

#### Consistent Formatting

```vim
set noexpandtab " Prevents tabs turning into spaces: spaces bad, tabs good
set tabstop=4 " Makes tabs 4 characters wide
set softtabstop=-1 " Makes it the same as tabstop automatically
set shiftwidth=0 " Makes it the same as tabstop automatically
" The two previous options must be the same as tabstop for our config,
" having them different introduces different behavior
set formatoptions=rqn1 " See ':help fo-table' to know what each one does
set textwidth=80 " Max length for a single line, autoformatting uses it
```

[Spaces bad, Tabs good](https://www.reddit.com/r/javascript/comments/c8drjo/nobody_talks_about_the_real_reason_to_use_tabs/)

#### All about Numbers

```vim
set ruler " Gives cursor position in bottom right corner
set number " Shows line numbers
set relativenumber " Makes line numbers relative to cursor, motions are easier
set scrolloff=5 " Cursor's distance from top and bottom when scrolling
```

#### Never lose Cursor

If you have an issue losing your cursor, you have an issue. But when your cursor
is a crosshair covering your entire screen, no sane person can lose it.

```vim
set cursorline " Highlights current line, everyone should have it
set cursorcolumn " Highlights current column, quite recommended
```

#### No more Mice

I'm not saying to never use the mouse, but you should disable it because it
ain't helpful in Vim.

```vim
set mouse= " Yes the value is nothing, that disables it completely
```

### [Previous](/Tutorial/01_Basic_Keybindings.md) <==> [Next](/Tutorial/03_Intro_to_Plugins.md)
