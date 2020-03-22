" plugins
runtime! ./plugins.rc.vim
" 通常設定
runtime! ./options.rc.vim
" キーコンフィング
runtime! ./keymap.rc.vim
" プラグイン設定
runtime! ./functions.rc.vim
" カラースキーム
runtime! ./color.rc.vim

" filetypeの自動検出(最後の方に書いた方がいいらしい)
filetype on
