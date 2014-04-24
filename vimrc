" vi互換ではなくVimのデフォルト設定にする
set nocompatible

filetype off

"--------------------------------------------------------------------------------
" neobundle設定
"--------------------------------------------------------------------------------
if v:version >= 702
  if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
  endif

  call neobundle#rc(expand('~/.vim/bundle/'))

  " Let NeoBundle manage NeoBundle
  NeoBundleFetch 'Shougo/neobundle.vim'

  " add plugins
  NeoBundle 'Shougo/unite.vim'
  NeoBundle 'h1mesuke/unite-outline'

  NeoBundle 'Shougo/vimproc'

  if has('lua') && v:version > 703
    NeoBundle 'Shougo/neocomplete.vim'
    NeoBundle 'violetyk/neocomplete-php.vim'
    echomsg "using neocomplete"
  else
    NeoBundle 'Shougo/neocomplcache.vim'
    echomsg "using neocomplcache"
  endif

  NeoBundle 'Shougo/neosnippet'

  filetype plugin on

  NeoBundleCheck
endif

" 設定ファイルの読み込み
set runtimepath+=~/.vim/
runtime! conf.d/*.vim

