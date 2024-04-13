# Pretty, but Useful

Let's add some visual helpers to Vim.

### Color Preview

When you're writing CSS, it'd be nice to be able to see you're colors in
Vim. `ap/vim-css-color` will highlight:
- Hex color codes
- Color names
- RGB functions
- HSL functions
- Anything else that describes colors in CSS

Unfortunately, it only works in CSS files.

![CSS Highlight](/Assets/CSSHighlight.png)

### Indent Guides

Wouldn't it be nice to be able to see what indent level you're at, just like
looking at a ruler? We don't even need a plugin:

```vim
" Somewhere in your config
set list lcs=tab:\|\ " Don't forget the space after the second '\', everything will look wierd if you do
```

### Status Line

You know that ruler in the bottom right? Well, you can add more information to
it. Vim has a way to do this manually, but it's very verbose. Let's instead
install a plugin with great defaults.

```vim
Plug 'vim-airline/vim-airline'
```

<!-- TODO: Add diagram of status line information. -->

### [Previous](/Tutorial/03_Intro_to_Plugins.md) <==> [Next](/Tutorial/05_Decreasedness_Tediousness.md)
