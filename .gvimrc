"=============================================================================
"    Description: .gvimrcサンプル設定
"         Author: 
"  Last Modified: 0000-00-00 00:00
"        Version: 0.00
"=============================================================================
scriptencoding cp932
"----------------------------------------
"システム設定
"----------------------------------------
"エラー時の音とビジュアルベルの抑制。
set noerrorbells
set novisualbell
set visualbell t_vb=

if has('multi_byte_ime') || has('xim')
  set iminsert=0 imsearch=0
  if has('xim') && has('GUI_GTK')
    "XIMの入力開始キー
    "set imactivatekey=C-space
  endif
endif

"IMEの状態をカラー表示
if has('multi_byte_ime')
  highlight Cursor guifg=NONE guibg=Green
  highlight CursorIM guifg=NONE guibg=Purple
endif

"----------------------------------------
" 表示設定
"----------------------------------------
"ツールバーを非表示
"set guioptions-=T
"コマンドラインの高さ
set cmdheight=2

"カラー設定:
"colorscheme mycolor

"フォント設定
"フォントは英語名で指定すると問題が起きにくくなります
if has('xfontset')
"  set guifontset=a14,r14,k14
elseif has('unix')

elseif has('mac')
"  set guifont=Osaka-Mono:h14
elseif has('win32') || has('win64')
   set guifont=VL_Gothic:h12:cSHIFTJIS
"  set guifontwide=MS_Gothic:h12:cSHIFTJIS
endif

"印刷用フォント
if has('printer')
  if has('win32') || has('win64')
"    set printfont=MS_Mincho:h12:cSHIFTJIS
"    set printfont=MS_Gothic:h12:cSHIFTJIS
  endif
endif

""""""""""""""""""""""""""""""
"Window位置の保存と復帰
""""""""""""""""""""""""""""""
if has('unix')
  let s:infofile = '~/.vim/.vimpos'
else
  let s:infofile = '~/_vimpos'
endif

function! s:SaveWindowParam(filename)
  redir => pos
  exec 'winpos'
  redir END
  let pos = matchstr(pos, 'X[-0-9 ]\+,\s*Y[-0-9 ]\+$')
  let file = expand(a:filename)
  let str = []
  let cmd = 'winpos '.substitute(pos, '[^-0-9 ]', '', 'g')
  cal add(str, cmd)
  let l = &lines
  let c = &columns
  cal add(str, 'set lines='. l.' columns='. c)
  silent! let ostr = readfile(file)
  if str != ostr
    call writefile(str, file)
  endif
endfunction

augroup SaveWindowParam
  autocmd!
  execute 'autocmd SaveWindowParam VimLeave * call s:SaveWindowParam("'.s:infofile.'")'
augroup END

if filereadable(expand(s:infofile))
  execute 'source '.s:infofile
endif
unlet s:infofile

"----------------------------------------
"メニューアイテム作成
"----------------------------------------
silent! aunmenu &File.Save
silent! aunmenu &File.保存(&S)
silent! aunmenu &File.差分表示(&D)\.\.\.

let message_revert="再読込しますか?"
amenu <silent> 10.330 &File.再読込(&U)<Tab>:e!  :if confirm(message_revert, "&Yes\n&No")==1<Bar> e! <Bar> endif<CR>
amenu <silent> 10.331 &File.バッファ削除(&K)<Tab>:bd  :confirm bd<CR>
amenu <silent> 10.340 &File.保存(&W)<Tab>:w  :if expand('%') == ''<Bar>browse confirm w<Bar>else<Bar>confirm w<Bar>endif<CR>
amenu <silent> 10.341 &File.更新時保存(&S)<Tab>:update  :if expand('%') == ''<Bar>browse confirm w<Bar>else<Bar>confirm update<Bar>endif<CR>
amenu <silent> 10.400 &File.現バッファ差分表示(&D)<Tab>:DiffOrig  :DiffOrig<CR>
amenu <silent> 10.401 &File.裏バッファと差分表示(&D)<Tab>:Diff\ #  :Diff #<CR>
amenu <silent> 10.402 &File.差分表示(&D)<Tab>:Diff  :browse vertical diffsplit<CR>




"----------------------------------------
" ユーザ設定
"----------------------------------------
" ColorSchemeを設定
source $MY_VIMRUNTIME/colors.vim
