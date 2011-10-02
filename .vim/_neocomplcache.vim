"-------------------
" NeoComplCacheの設定を行う
" (.vimrcから呼ばれる)
"-------------------

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3

" libclang を使用して高速に補完を行う
" 1でpython使うぽ
let g:neocomplcache_clang_use_library=1
" clang.dll へのディレクトリパス
"let g:neocomplcache_clang_library_path='E:/lib/clang_2.9/bin'
let g:neocomplcache_clang_library_path='E:/lib/llvm/bin'
" clang のコマンドオプション
let g:neocomplcache_clang_user_options =
    \ '-I E:/lib/boost_1_47_0 '.
    \ '-I E:/cygwin/usr/local/gcc/4.6.1/lib/gcc/i686-pc-cygwin/4.6.1/include/c++ '.
    \ '-I E:/cygwin/usr/local/gcc/4.6.1/lib/gcc/i686-pc-cygwin/4.6.1/include/c++/i686-pc-cygwin '.
    \ '-I E:/cygwin/usr/local/gcc/4.6.1/lib/gcc/i686-pc-cygwin/4.6.1/include/c++/tr1 '.
    \ '-I E:/cygwin/usr/include '.
    \ '-I E:/cygwin/usr/i686-pc-mingw32/sys-root/mingw/include '.
    \ '-fms-extensions -fgnu-runtime '.
    \ '-include malloc.h '
"    \ '-I D:/MinGW/lib/gcc/mingw32/4.5.3/include '.
"    \ '-I E:/cygwin/usr/local/gcc/4.6.1/lib/gcc/i686-pc-cygwin/4.6.1/include/c++ '.

" neocomplcache で表示される補完の数を増やす
" これが少ないと候補が表示されない場合があります
let g:neocomplcache_max_list=1000

"// Run the same tests, this time with macros loaded from the PCH file.
"// RUN: %clang_cc1 -emit-pch -o %t %S/Inputs/macros.h
"// RUN: %clang_cc1 -include-pch %t -fsyntax-only -code-completion-macros -code-completion-at=%s:12:14 %s -o - | FileCheck -check-prefix=CC1 %s
"// RUN: %clang_cc1 -include-pch %t -fsyntax-only -code-completion-macros -code-completion-at=%s:14:9 %s -o - | FileCheck -check-prefix=CC2 %s
