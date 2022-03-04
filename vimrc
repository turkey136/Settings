set textwidth=120

" カラースキーマ
colorscheme jellybeans

" インデント設定
"自動インデント
set autoindent
set smartindent
set tabstop=2
set expandtab
set shiftwidth=2
set list

" 保存関係
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread


" 不可視文字を可視化(タブが「?-」と表示される)
set list listchars=tab:\?\-
"文字コードをUFT-8に設定
set fenc=utf-8
" 行番号を表示
set number
"set cursorcolumn
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" 括弧入力時の対応する括弧を表示
set showmatch
" %で対応するカッコにジャンプ
source $VIMRUNTIME/macros/matchit.vim
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk
" 記号表示
set ambiwidth=double
" カーソルラインをハイライト
set cursorline
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>
" バックスペース削除を有効
set backspace=indent,eol,start
"ビープ音すべてを無効にする
set visualbell t_vb=
set noerrorbells
" 保存するコマンド履歴の数
set history=5000
set showcmd

" コード整形とか
" スペルチェック
set spelllang+=cjk
set spell
" シンタックス
set syntax=enable

" help 日本語化
set helplang=ja,en

"indentline"
let g:indentLine_color_term =239
let g:indentLine_color_gui = '#708090'
let g:indentLine_char = '¦'
