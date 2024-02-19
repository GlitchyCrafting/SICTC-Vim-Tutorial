# 01 - Options

## Setting Options

Every time Vim starts up it searches for a file called `~/.vimrc`. If found, the contents of the file will be executed like any command in Command Mode. This file is how you set your options.

You can set an option in one of three ways:

```vim
set option=value " For any option type
set option       " Sets to true
set nooption     " Sets to false
```

## The Options

There are many options to customize the behavior of Vim, here are the ones I mainly use. More can be found at `:help options`.

```vim
set nocompatible       " Whether Vim should be compatible with Vi
set backspace=2        " This will make backspace behave how you would normally expect
set ruler              " This tells you where your cursor is in the bottom right
set scrolloff=5        " How far the cursor should stay from the top and bottom of the screen. Can be any number you want, just see what you like
set number             " Show line numbers
set relativenumber     " Line numbers are relative to cursor, count motions
set cursorline         " Highlights the current line making navigation easier
set noexpandtab        " https://www.reddit.com/r/javascript/comments/c8drjo/nobody_talks_about_the_real_reason_to_use_tabs/
set smarttab           " Inserting and Deleting tabs works like expected
set autoindent         " Keep current indent when going to next line
set wrap               " Really long lines will visually move to the next line
set textwidth=80       " Limits line length to 80 characters, only useful during autoformatting
set tabstop=4          " How wide a <Tab> is
set shiftwidth=4       " Vim expects this to be the same as `tabstop`
set softtabstop=-1     " Alternative to `tabstop`, this makes sure they are the same value
set formatoptions=rqn1 " Autoformatting stuff `:help fo-table` if you want to know what these mean
set nobackup:          " Don't make a backup file
set writebackup:       " Makes backup during writing just in case of corruption
set undofile:          " Preserve undo steps between Vim launches
set noswapfile:        " As helpful as swapfiles are, the're annoying and you should save more often anyway
set history=50         " How many undo steps to keep track of
set splitright         " Open new splits to the right of current
set splitbelow         " Open new vsplits below current
set foldmethod=indent  " Automatically create folds based on indent, `zx` to refresh
set mouse=             " Yes that is an empty option and, yes, it does disable the use of the mouse
```

Vim looks quite ugly with these options, but we're gonna fix that in a just a bit
![Vim lookin' a bit ugly](/Assets/01-Options.png)
