if neobundle#is_installed('neocomplete.vim')
  " neocomplete-php.vimを使う場合は初回起動時に
  " :PhpMakeDict jaを実行する
  " http://yuheikagaya.hatenablog.jp/entry/2014/01/19/235957
  let g:neocomplete_php_locale = 'ja'
endif

