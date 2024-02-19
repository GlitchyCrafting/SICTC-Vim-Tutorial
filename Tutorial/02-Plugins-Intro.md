# Plugins Intro

First, we need a plugin-manager. `vim-plug` is the most popular so that's what we're gonna use.

To install it, in your terminal run:
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
Any time we add a plugin, it will go between these two calls. Nothing else will ever go in between them.

As practice, let's make Vim a bit prettier by adding a colorscheme. My colorscheme, `glitchcandy`, doesn't have a Vim version so here's my next three favorites:
1. [catppuccin](https://vimcolorschemes.com/catppuccin/vim), mocha variant
2. [tokyonight](https://vimcolorschemes.com/ghifarit53/tokyonight-vim)
3. [dracula](https://vimcolorschemes.com/dracula/vim)

You can use any colorscheme you like, [here's some more](https://vimcolorschemes.com), but make sure it's not an NeoVim scheme, like `glitchcandy`, and only a Vim one.

```vim
" In your options
set termguicolors " This will make sure colors show up right
set t_Co=256      " Makes sure Vim knows it can display full colors

" In your Plugins
Plug 'catppuccin/vim' " Use this syntax every time you add a plugin: Plug 'plugin/url'

" Before or After your Plugins section
colorscheme catppuccin_mocha " Sets the colorscheme
```

To reload the config, either restart Vim or
```vim
:source % " This will load the current buffer into Vim as a config
```
Then update the plugins, regardless of the reload strategy:
```vim
:PlugClean  " Not necessary unless you're removing a plugin
:PlugUpdate " Run every time you add a new plugin, will update all installed plugins too
```

That's much better.
![Vim with catppuccin_mocha theme](/Assets/02-Plugins-Intro.png)
