# Less Tediousness

There are things that are just so tedious to do: Commenting, Paired Characters (eg. {}, "", ''), Opening Files, etc. I don't want to do them, so you shouldn't have to either.

## Commenting

Sometimes you need to comment out a block of code, then sometimes uncomment it.
You could just `^i# <Esc>` every time, but that only comments one line.
To comment multiple lines, you have to do this command for each line.

You could use `gcc` for a line and `v{motion}gc` for multiple lines, though, if you use a plugin.
Languages that support block comments can have selections of a line commented out too using the same keys as multiple lines.

```vim
" Just before your plugins section
filetype plugin indent on

" Plugin url
'tope/vim-commentary'
```

## Auto-Pair

Don't you hate hitting `'` and then having to type the second `'`? Fix it with
this plugin:
```vim
" Plugin url
'jiangmiao/auto-pairs'
```

## File Opening

Instead of remembering the entire file name, you could use a file tree and dig through directories forever.
But why not just search for the easy-to-remember bits?
We call this fuzzy finding and it can search more than just files.
We actually need both a plugin and an app for this:
```bash
sudo apt-get install fzf
```
```vim
" Plugin url
'junegunn/fzf.vim'
```
You can actually use the app outside of Vim: `<some program> $(fzf)`

The following commands are provided:
```vim
:Files    " Gives a file picker
:Buffers  " Gives a buffer picker
:Helptags " Search the built-in Vim help
```
There are more commands, but these are the most useful.

## Editor Syntax Compatibility

Nobody can agree on what coding style they want to use:
- Tabs vs Spaces
- OTBS vs Stroustrup vs K&R vs ... [Just look at this list](https://www.wikiwand.com/en/Indentation_style)

So let's allow Vim to follow to other people's styles:
```vim
" Plugin url
'editorconfig/editorconfig-vim'
```
This won't be very helpful in this class, unless you're working with me.
Many companies use this plugin, though, whether in Vim or other editors.

File dialogs are great. It even comes with a preview!
![Fzf in Vim](/Assets/04-Less-Tediousness.png)
