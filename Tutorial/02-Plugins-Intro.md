# Plugins Intro

First, we need a plugin-manager. `vim-plug` is the most popular so that's what we're gonna use.

To install it run:
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Add a section to the end of your `~/.vimrc`:
```vim
call plug#begin()

" Plugins go here

call plug#end()
```
Any time we add a plugin, it will go between these two calls.

As practice, let's make Vim a bit prettier by adding a colorscheme. My `glitchcandy` port for Vim isn't done yet so here's my next favorites:
1. [catppuccin](https://vimcolorschemes.com/catppuccin/vim), mocha variant
2. [tokyonight](https://vimcolorschemes.com/ghifarit53/tokyonight-vim)
3. [dracula](https://vimcolorschemes.com/dracula/vim)

You can use any colorscheme you like, [here's some more](https://vimcolorschemes.com), but make sure it's not an NVim scheme and only a Vim one.

1. Set the `termguicolors` option to true to get correct colors in the terminal.
2. Add `Plug 'catppuccin/vim'` to your plugins section.
3. Add `colorscheme catppuccin_mocha` after the plugins section.
4. Restart Vim and run `:PlugUpdate`

That's much better.
![Vim with catppuccin_mocha theme](/Assets/02-Plugins-Intro-Final.png)
