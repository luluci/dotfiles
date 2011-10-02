"-------------------
" vundle.vim‚Ìİ’è‚ğs‚¤
" (.vimrc‚©‚çŒÄ‚Î‚ê‚é)
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

" vim-scripts repos
" sample: Bundle 'project.tar.gz'

filetype plugin indent on
