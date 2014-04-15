" vi互換ではなくVimのデフォルト設定にする
set nocompatible

filetype off

"--------------------------------------------------------------------------------
" neobundle設定
"--------------------------------------------------------------------------------
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" add plugins
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'

filetype plugin on

NeoBundleCheck
 
"--------------------------------------------------------------------------------
" システム設定
"--------------------------------------------------------------------------------
" エンコード
set encoding=utf8

" ファイルエンコード
set fileencoding=utf-8

" ファイルの上書きの前にバックアップを作らない
" バックアップは上書きに成功した後に削除される。
set nowritebackup

" バックアップを作成しない
set nobackup

" クリップボードを共有
set clipboard+=unnamed

" バックスペースでインデントや改行を削除できるようにする
set backspace=indent,eol,start


"--------------------------------------------------------------------------------
" 表示設定
"--------------------------------------------------------------------------------
" シンタックスハイライト
syntax on

" 行番号表示
set number

" 右下に行と列の番号を表示する
set ruler

" タイトルを表示
set title

" 対応括弧をハイライト表示する
set showmatch

" 対応括弧の表示秒数
set matchtime=3

" 行を折り返す
set wrap

" コマンドを画面最下部に表示する
set showcmd

" 検索結果をハイライト表示
set hlsearch

"--------------------------------------------------------------------------------
" 入力設定
"--------------------------------------------------------------------------------
" 補完の際の大文字小文字を区別しない
set infercase

" 小文字の検索でも大文字も見つかるようにする
set ignorecase

" ただし大文字も含めた検索の場合はその通りに検索する
set smartcase

" インクリメンタルサーチを行う
set incsearch

"--------------------------------------------------------------------------------
" neocomplcache設定
"--------------------------------------------------------------------------------
" neocomplcacheを起動時に有効化する
let g:neocomplcache_enable_at_startup = 1

" 大文字を区切りとしたワイルドカードのように振る舞う機能
let g:neocomplcache_enable_camel_case_completion = 1

" _区切りの補完を有効化
let g:neocomplcache_enable_underbar_completion = 1

" 大文字が入力されるまで大文字小文字の区別を無視する
let g:neocomplcache_smart_case = 1

" シンタックスをキャッシュするときの最小文字長
let g:neocomplcache_min_syntax_length = 3

" 手動補完時に補完を行う入力数を制御
let g:neocomplcache_manual_completion_start_length = 0
let g:neocomplcache_caching_percent_in_statusline = 1
let g:neocomplcache_enable_skip_completion = 1
let g:neocomplcache_skip_input_time = '0.5'

