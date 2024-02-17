# 01 - Options

## Setting Options

Every time Vim starts up it searches for a file called `~/.vimrc`. If found, the contents of the file will be executed like any command in Command Mode. This file is how you set your options.

You can set an option in one of three ways:

- `set option=value`: For any option type
- `set option`: Sets to true
- `set nooption`: Sets to false

## The Options

There are many options to customize the behavior of Vim, here are the ones I mainly use. More can be found at `:help options`.

- `nocompatible`: Whether Vim should be compatible with Vi
- `backspace`=`2`: This will make backspace behave how you would normally expect
- `ruler`: This tells you where your cursor is in the bottom right
- `scrolloff`=`5`: How far the cursor should stay from the top and bottom of the screen. Can be any number you want, just see what you like
- `number`: Show line numbers
- `relativenumber`: Line numbers are relative to cursor, count motions
- `cursorline`: Highlights the current line making navigation easier
- `noexpandtab`: [Tabs are superior to Spaces](https://www.reddit.com/r/javascript/comments/c8drjo/nobody_talks_about_the_real_reason_to_use_tabs/) so set it to false
- `smarttab`: Inserting and Deleting tabs works like expected
- `autoindent`: Keep current indent when going to next line
- `wrap`: Really long lines will visually move to the next line
- `textwidth`=`80`: Limits line length to 80 characters, only useful during autoformatting
- `tabstop`=`4`: How wide a <Tab> is
- `shiftwidth`=`4`: Vim expects this to be the same as `tabstop`
- `softtabstop`=`-1`: Alternative to `tabstop`, this makes sure they are the same value
- `formatoptions`=`crqn1`: Autoformatting stuff `:help fo-table` if you want to know what these mean
- `nobackup`: Don't make a backup file
- `writebackup`: Makes backup during writing just in case of corruption
- `undofile`: Preserve undo steps between Vim launches
- `noswapfile`: As helpful as swapfiles are, the're annoying and you should save more often anyway
- `history`=`50`: How many undo steps to keep track of
- `splitright`: Open new splits to the right of current
- `splitbelow`: Open new vsplits below current
- `foldmethod`=`indent`: Automatically create folds based on indent, `zx` to refresh
- `mouse`=``: Yes that is an empty option and, yes, it does disable the use of the mouse

Vim looks quite ugly with these options, but we're gonna fix that in a just a bit
![Vim lookin' a bit ugly](/Assets/01-Options-Final.png)
