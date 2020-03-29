""""""""""""""""""""""""""""""
" 各種オプションの設定
""""""""""""""""""""""""""""""
"" 基本設定
" スワップファイルは使わない(ときどき面倒な警告が出るだけで役に立ったことがない)
set noswapfile
" undoファイルは作成しない
set noundofile
" 保存されていないファイルがあるときでも別のファイルを開けるようにする
set hidden
" バッファで開いているファイルのディレクトリでエクスクローラを開始する(でもエクスプローラって使ってない)
set browsedir=buffer
" 画面を縦分割する際に右に開く
set splitright
" クラッシュ防止（http://superuser.com/questions/810622/vim-crashes-freezes-on-specific-files-mac-osx-mavericks）
set synmaxcol=200
" G押下時にカラム位置を保持
set nostartofline

"" 表示
" 行番号のハイライト
set cursorline
" カーソルが何行目の何列目に置かれているかを表示する
set ruler
" 暗い背景色に合わせた配色にする
set background=dark
" 行番号を表示する
set number
" 対応する括弧やブレースを表示する
set showmatch
" ステータス行に表示させる情報の指定(どこからかコピペしたので細かい意味はわかっていない)
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
" ステータス行に現在のgitブランチを表示する
set statusline+=%{fugitive#statusline()}
" コマンドラインに使われる画面上の行数
set cmdheight=2
" エディタウィンドウの末尾から2行目にステータスラインを常時表示させる
set laststatus=2
" ウインドウのタイトルバーにファイルのパス情報等を表示する
set title
" 入力中のコマンドを表示する
set showcmd
" 不可視文字を表示する
set list
" タブと行の続きを可視化する
set listchars=tab:>\ ,extends:<
" http://inari.hatenablog.com/entry/2014/05/05/231307
""""""""""""""""""""""""""""""
" 全角スペースの表示
""""""""""""""""""""""""""""""
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
endfunction

if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme * call ZenkakuSpace()
        autocmd VimEnter,WinEnter,BufRead * let w:m1=matchadd('ZenkakuSpace', '　')
    augroup END
    call ZenkakuSpace()
endif
""""""""""""""""""""""""""""""
" grep検索の実行後にQuickFix Listを表示する
autocmd QuickFixCmdPost *grep* cwindow

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"" 入力
" ヤンクをクリップボードに保存
set clipboard+=unnamed
" コマンドラインモードで<Tab>キーによるファイル名補完を有効にする
set wildmenu
" タブ入力を複数の空白入力に置き換える
set expandtab
" 改行時に前の行のインデントを継続する
set autoindent
" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent
" Vimが挿入するインデントの幅
set shiftwidth=2
" タブ文字の表示幅
set tabstop=2
" 行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする
set smarttab
" textwidthでフォーマットさせたくない
set formatoptions=q
""""""""""""""""""""""""""""""
" 最後のカーソル位置を復元する
""""""""""""""""""""""""""""""
if has("autocmd")
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
endif
""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""
" 自動的に閉じ括弧を入力
""""""""""""""""""""""""""""""
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>
""""""""""""""""""""""""""""""

"" 移動
" タグファイルの指定(でもタグジャンプは使ったことがない)
set tags=~/.tags
" カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]


"" 検索
" 小文字のみで検索したときに大文字小文字を無視する
set smartcase
" 検索結果をハイライト表示する
set hlsearch
" 検索パターンにおいて大文字と小文字を区別しない
set ignorecase
" 検索ワードの最初の文字を入力した時点で検索を開始する
set incsearch

"" Git
set diffopt+=vertical
