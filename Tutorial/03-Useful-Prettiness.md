# 03-Useful-Prettiness

These things make Vim both less ugly and make Vim more useful.

## Syntax Highlighting

Vim has basic highlighting for many languages, but it ain't great so let's improve it.

1. Add `let g:polyglot_diabled = ['sensible']` before your plugin section to disable `polyglot` overriding our settings
2. Add `Plug 'sheerun/vim-polyglot'` to your plugins.
3. `:source ~/.vimrc` to reload your config
4. `:PlugUpdate` to install it

Remember to keep your plugins organized, it's best to group similar plugins together.

## Color Highlighting

By default, there ain't no preview for color codes. That makes it pretty difficult to work with CSS.

1. Add `Plug 'ap/vim-css-color'` to your plugins.
2. Reload your config
3. `:PlugUpdate`

This plugin only works in CSS files, so don't expect highlighting in other files.

## Indent Guides

We actually don't need a plugin for this because we use tabs for indent. Just add `set list lcs=tab:\|\ ` somewhere in your config.

## DecIcons

You won't use this directly, but it is a dependency for some plugins.
Add `ryanoasis/vim-devicons` using the same procedure we've been using.

## Status Line

You know that thing at the bottom of the window that shows your cursor position and mode? Well, let's replace that to have some more info and better looks.
Just add `vim-airline/vim-airline` to your plugins.

Now isn't that better?
![Airline and Indent](/Assets/03-Useful-Prettiness.png)
It's hard to show the syntax highlighting with a simple language, just trust it's there. The screenshot only features comments, that's why there ain't no highlighting there.
