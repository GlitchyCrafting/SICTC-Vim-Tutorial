# Pretty, but Useful

Let's add some visual helpers to Vim.

### Language Support

Vim's default syntax highlighting is quite good for what it is, but it's still
basic and can be improved. `Polyglot` is a plugin that bundles support for many
programming languages, with more that just syntax highlighting in many of them.

```vim
Plug 'sheerun/vim-polyglot'
```

`Polyplot` sets some settings by default that override our own, so above your
`plug` block:

```vim
let g:polyglot_disabled=['sensible']
```

Some language packs we use have some settings we need to set before our `plug`
block:

```vim
set re=0 " Required for typescript support
let g:javascript_plugin_jsdoc=1 " javascript support
let g:python_highlight_all=1 " python support
```

<!-- TODO: Add syntax highlighting comparison -->

### Color Preview

When you're writing CSS, it'd be nice to be able to see you're colors in
Vim. `ap/vim-css-color` will highlight:
- Hex color codes
- Color names
- RGB functions
- HSL functions
- Anything else that describes colors in CSS

Unfortunately, it only works in CSS files.

<!-- TODO: Add color preview example -->

### Indent Guides

Wouldn't it be nice to be able to see what indent level you're at, just like
looking at a ruler? We don't even need a plugin:

```vim
" Somewhere in your config
set list lcs=tab:\|\
```

### Status Line

You know that ruler in the bottom right? Well, you can add more information to
it. Vim has a way to do this manually, but it's very verbose. Let's instead
install a plugin with great defaults.

```vim
Plug 'vim-airline/vim-airline'
```

<!-- TODO: Add diagram of status line information. -->

<!-- TODO: Add navigation -->
