# Intro to Plugins

### Plug.vim

So, Vim supports plugins but they need to be installed manually. How
boring. How does installing one plugin manually and have it manage all the
others for us sound?

First, open your terminal and run the following command to install Plug.vim:

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Then add the following code somewhere in your `~/.vimrc`:

```vim
call plug#begin()

" This is where you put all your plugins
" But not the configs, those go before or after these two calls

call plug#end()
```

Now we got to install a plugin. What better to practice with than our
colorscheme? Something that changes nothing but the visual appeal of Vim. I have
my own colorscheme, `glitchcandy`, but it don't have a Vim version yet, so we
gotta go with my next favorites.

1. [catppuccin](https://vimcolorschemes.com/catppuccin/vim), the mocha variant
2. [tokyonight](https://vimcolorschemes.com/ghifarit53/tokyonight-vim)
3. [dracula](https://vimcolorschemes.com/dracula/vim)

There are [more colorschemes to choose from](https://vimcolorschemes.com), just
make sure it's a Vim colorscheme and not a NeoVim (NVim) one. NeoVim can use Vim
stuff, but not the other way around[^1].

[^1]: Unless the author explicitly builds it to be Vim compatible.

```vim
call plug#begin()

Plug 'catppuccin/vim' " All plugins use the same format
" Plug 'github-username/github-repo'
" Using the full URL is possible, but Plug assumes github.com by default

call plug#end()
```

Now restart Vim and call:

```vim
:PlugUpdate " This updates existing plugins and installes new ones
:PlugClean " Only needed to remove old plugins no longer in your .vimrc
```

Then after the `plug` block:

```vim
colorscheme catppuccin_mocha " Sets the colorscheme on every start
```

You'd expect to have pretty colors on every startup, but Vim actually doesn't
know all these colors are avaliable yet. Add to your options:

```vim
set termguicolors " Tells Vim your terminal supports full color
set t_Co=256 " Tells Vim how many colors are supported
" 256 colors is supported by every modern-ish terminal emulator
```

| Catppuccin | TokyoNight | Dracula |
|:----------:|:----------:|:-------:|
| ![Catppuccin](/Assets/Catppuccin.png) | ![TokyoNight](/Assets/TokyoNight.png) | ![Dracula](/Assets/Dracula.png) |

### [Previous](/Tutorial/02_Setting_your_Settings.md) <==> [Next](/Tutorial/04_Pretty_but_Useful.md)
