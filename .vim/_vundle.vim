"-------------------
" vundle.vimの設定を行う
" (.vimrcから呼ばれる)
"-------------------
set nocompatible
filetype off

" Path for git command
"let $PATH = $PATH .';'. 'F:\work\Tools\Git\bin'
let $PATH = $PATH .';'. 'F:\work\Tools\Git\cmd'

set rtp+=$HOME/.vim/bundle/vundle/
call vundle#rc("$HOME/.vim/bundle")  " 

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Bundles here:

" original repos on github
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/unite.vim'
Bundle 'Shougo/vimshell'
Bundle 'Shougo/vimproc'
Bundle 'thinca/vim-quickrun'

" vim-scripts repos
" sample: Bundle 'project.tar.gz'

filetype plugin indent on
