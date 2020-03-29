""""""""""""""""""""""""""""""
" プラグインのセットアップ
""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
" ファイルオープンを便利に
Plug 'Shougo/unite.vim'
" Unite.vimで最近使ったファイルを表示できるようにする
Plug 'Shougo/neomru.vim'
" ファイルをtree表示してくれる
Plug 'scrooloose/nerdtree'
" Gitを便利に使う
Plug 'tpope/vim-fugitive'
" Rails向けのコマンドを提供する
" Plug 'tpope/vim-rails'
" Ruby向けにendを自動挿入してくれる
Plug 'tpope/vim-endwise'
" コメントON/OFFを手軽に実行
" gccでコメントアウト切り替え
" visualモードで選択後、gcでまとめてコメントアウト
Plug 'tomtom/tcomment_vim'
" シングルクオートとダブルクオートの入れ替え等
Plug 'tpope/vim-surround'
" インデントに色を付けて見やすくする
Plug 'nathanaelkane/vim-indent-guides'
" ログファイルを色づけしてくれる
Plug 'vim-scripts/AnsiEsc.vim'
" 行末の半角スペースを可視化
Plug 'bronson/vim-trailing-whitespace'
" less用のsyntaxハイライト
" Plug 'KohPoll/vim-less'
" RubyMineのように自動保存する
Plug '907th/vim-auto-save'
" CSVをカラム単位に色分けする
Plug 'mechatroner/rainbow_csv'
" ブロック移動の拡張
Plug 'andymass/vim-matchup'
" " (Optional) Multi-entry selection UI.
Plug 'junegunn/fzf'
" ドキュメント参照
Plug 'thinca/vim-ref'
Plug 'yuku-t/vim-ref-ri'
" lightline
Plug 'itchyny/lightline.vim'
" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" w0rp/ale
Plug 'w0rp/ale'
" vim-gitgutter
Plug 'airblade/vim-gitgutter'
" tpope/vim-fugitive
Plug 'tpope/vim-fugitive'
call plug#end()
