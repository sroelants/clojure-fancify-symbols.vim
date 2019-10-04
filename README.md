# Clojure-fancify-symbols

A direct port of the `clojure-enable-fancify-symbols` option to che Clojure
layer in spacemacs. Performs a couple of commonplace replacements:


- Anonymous functions using `fn` are replaced by `λ`: 
`(map (λ [x] (* x x) [1 2 3])`.
- Anonymous function shorthand using the dispatch `#` is replaced by `ƒ`:
`ƒ(+ 5 %)`.
- Partial application using `partial` is replaced by `Ƥ`: 
`((Ƥ map inc) [1 2 3])`.
- Function composition using `comp` is replaced by `⚪`: 
`((⚪ lower-case reverse) "DEIFIED")`.
- Set shorthand using the dispatch `#` is replaced by `∈`: `∈{1 2 3}`.

Characters on the current cursor line are expanded again so as not to hinder 
editing.

## Installation
### Plug
- Add `Plug 'sroelants/clojure-fancify-symbols.vim'` to your `.vimrc`.
- Run `:PlugInstall`.

### Vundle
- Add `Plugin 'sroelants/clojure-fancify-symbols.vim'` to your `.vimrc`.
- Run `:PluginInstall`.

### Pathogen
Clone the repository into your bundle directory.
```
$ cd ~/.vim/bundle
$ git clone https://github.com/Raimondi/delimitMate.git
```


## Configuration
*clojure-fancify-symbols* can be toggled on or off by setting 
`g:no_clojure_fancify` to 1 or 0 respectively.

A couple of extended ligatures can be turned on by setting
`g:clojure_fancify_extenden=1`, if you're into that kind of thing:

- Thread first macro `->` is replaced by `→`.
- Thread last macro `->>` is replaced by `↠`.
- Less than or equal (<=) is replaced by `≤`.
- Greater than or equal (>=) is replaced `≥`.

## Issues
*clojure-fancify-symbols* uses vim's 'conceal' function to replace arbitrary
text. Other plugins that make use of this (eg. 'Yggdroot/indentLine') will be
affected.
