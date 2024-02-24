# Advanced Keybindings

Sure, you can get around in Vim, but you're not quite ready yet. Here's some
more keybindings to make your life a lot easier.

### Better Motions

The motions you have currently are basic and still take up a lot of time to get
them to do what you want. When doing any keybind that accepts a motion to target
text, `v, d, y`, you can use these two-part motions instead of the basic ones.

#### Method

This specifies _how_ the text is selected, `i`nside or `a`round. `i`nside selects
the stuff inside the identifier, `a`round selects the stuff inside and the
identifier itself.

#### Target

Now that you have a method, you can specify _what_ to select. There are many, so
bear with me:
```vim
w " Word
s " Sentence
p " Paragraph
{ " { this }
[ " [ this ]
( " ( this )
< " < this >
t " <tag> this <tag>
' " 'this'
" " "this"
` " `this`
```

#### Putting it Together

Here's some examples:
- `vaw` selects the word and the space behind it
- `di{` deletes everything inside current block
- `yat` yanks an HTML tag and it's contents

<!-- Add some visual examples -->

### Spelling

Nobody can spell anything right so use `z=` to get spelling sugestions for the
word under the cursor.

### Indentation

Sometimes things are indented wrong and they need to be fixed. Any language that
uses indentation-scope (eg. python) must be fixed manually, but languages that
make heavy use of `{}` can use Vim's auto-indent.

```vim
== " Auto-indent current or selected lines
>> " Indent by one level
<< " Unindent by one level
```

<!-- Add some visual examples -->

### Case and Numbers

Vim can increment and decrement numbers for you:
```vim
<C-a> " Increment
<C-x> " Decrement
```

<!-- Add some visual examples -->

Vim can also toggle UPPERCASE and lowercase of whatever's selected or the
character under the cursor with `~`.
