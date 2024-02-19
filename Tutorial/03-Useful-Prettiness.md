# 03-Useful-Prettiness

These things make Vim both less ugly and make Vim more useful.

## Syntax Highlighting

Vim has basic highlighting for many languages, but it ain't great so let's improve it.

```vim
" Just before your Plugins section
let g:polyglot_disabled = ['sensible'] " Polyglot sets some options that would override ours, this stops it from doing that

" In your plugins
Plug 'sheerun/vim-polyglot'
```

Remember to keep your plugins organized, it's best to group similar plugins together.

## Color Highlighting

By default, there ain't no preview for color codes. That makes it pretty difficult to work with CSS.

```vim
" The plugin url
'ap/vim-css-color'
```

This plugin only works in CSS files, so don't expect highlighting in other files.

## Indent Guides

We actually don't need a plugin for this because we use tabs for indent.
```vim
" In your options
set list lcs=tab:\|\
```

## DevIcons

You won't use this directly, but it is a dependency for some plugins: `'ryanoasis/vim-devicons'`

## Status Line

You know that thing at the bottom of the window that shows your cursor position and mode? Well, let's replace that to have some more info and better looks.
Just add `'vim-airline/vim-airline'` to your plugins.

Now isn't that better?
![Airline and Indent](/Assets/03-Useful-Prettiness.png)
It's hard to show the syntax highlighting with a simple language, just trust it's there. The screenshot only features comments, that's why there ain't no highlighting there.
