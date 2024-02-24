# Conclusion and Beyond

### Conclusion

Now you have a _mostly_ fully-featured Vim config.
There are [many more plugins](https://vimawesome.com) you can add and many more
keybinds you can learn, but configuring Vim is time-consuming. It's also
difficult due to lack of documentation, not to mention how non-user-friendly
Vimscript is.

### Beyond

The next step is to use [NeoVim](https://neovim.io), it's configured in
[Lua](https://lua.org) and [has many more plugins than Vim](https://neoland.dev),
with backwards compatibility with most Vim plugins and `~/.vimrc`s. It's also
been rewritten in many places to make it more preformant and easier to develop.

By default NeoVim comes with `treesitter` featuring more accurate syntax
highlighting. <br>Also native support for Language Server Protocol (LSP) making
setting up autocompletion and formatting very easy. <br>With a more robust UI API,
plugins can add better looking and more complicated UIs without fighting the
API. <br>Better defaults and more performance is added overall; nobody needs Vi
compatibility anymore so why make it default? <br>Plugin managers are also more
robust with more features making startup fast no matter how many plugins are
installed. <br>Using Lua to configure stuff makes both editor and plugin
configuration consistent, no more needing to have 20 different config styles.

NeoVim just has many more feature by default and makes it easier to add on to
it. I recommend taking a look at it, it's what I use and my colorscheme
[glitchcandy](https://github.com/glitchcandy/) is avaliable for it.
