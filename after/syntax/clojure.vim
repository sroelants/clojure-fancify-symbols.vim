"=============================================================================
" What Is This: Add some basic conceal charachters for common clojure 
"               functions, mimicking the spacemacs 'clojure-fancify-symbols'
"               setting.
" File:         clojure-fancify-symbols.vim (conceal enhancement)
" Author:       Sam Roelants <roelants.sam@gmail.com>
" Last Change:  2019-10-03
" Version:      1.0
" Require:
"   set nocompatible
"     somewhere on your .vimrc
"
"   Vim 7.3 or Vim compiled with conceal patch.
"   Use --with-features=big or huge in order to compile it in.
"
" Usage:
"   Drop this file in your
"       ~/.vim/after/syntax folder (Linux/MacOSX/BSD...)
"       ~/vimfiles/after/syntax folder (Windows)
"
"   For this script to work, you have to set the encoding
"   to utf-8 :set enc=utf-8
"
" Additional:
"     * if you want to avoid the loading, add the following 
"     "       line in your .vimrc :
"        let g:no_clojure_fancify = 1
"  Changelog:
"
if exists('g:no_clojure_fancify') || !has('conceal') || &enc != 'utf-8'
    finish
endif

" vim: set fenc=utf-8:
syntax keyword cljOperator fn conceal cchar=λ
syntax keyword cljOperator partial conceal cchar=Ƥ
syntax keyword cljOperator comp conceal cchar=⚪
syntax match clojureConcealLambda /\v#\(/me=e-1 conceal cchar=ƒ
syntax match clojureConcealLambda /\v#\{/me=e-1 conceal cchar=∈


if exists('g:clojure_fancify_extended')
syntax match cljOperator "->" conceal cchar=→
syntax match cljOperator "->>" conceal cchar=↠
syntax match cljOperator "<=\ze[^<]" conceal cchar=≤
syntax match cljOperator ">=\ze[^>]" conceal cchar=≥
endif

hi link cljOperator Operator
hi! link Conceal Operator
setlocal conceallevel=2
setlocal concealcursor=

