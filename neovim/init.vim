set nobackup
set noswapfile
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
set encoding=utf-8
scriptencoding utf-8
set number 
set backspace=indent,eol,start
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
inoremap <Esc> <Esc>lh
set clipboard+=unnamed


"// PLUGIN SETTINGS
call plug#begin('~/.config/nvim/plugged')
  "// ステータスバーをかっくよく
  Plug 'vim-airline/vim-airline'
  
  "// ディレクトリツリー
  Plug 'preservim/nerdtree'
  Plug 'jistr/vim-nerdtree-tabs'
  autocmd vimenter * NERDTree
  let g:nerdtree_tabs_open_on_console_startup=1

  "// style
  Plug 'sheerun/vim-polyglot'

  "// gcc でコメント/コメントアウト
  Plug 'tpope/vim-commentary'

  "// インデント表示
  Plug 'Yggdroot/indentLine'
  let g:indentLine_color_term =239
  let g:indentLine_color_gui = '#708090'
  let g:indentLine_char = '¦'

  "// 静的解析
  Plug 'dense-analysis/ale'
  let g:ale_fixers = {'ruby': ['rubocop']}
  let g:ale_sign_error = '>>'
  let g:ale_sign_warning = '--'
  highlight clear ALEErrorSign
  highlight clear ALEWarningSign
  let g:ale_fix_on_save = 1

  "// 自動補完 表示がおかしいので一旦やめる
"  Plug 'Shougo/ddc.vim'
"  Plug 'vim-denops/denops.vim'
"  Plug 'Shougo/ddc-around'
"  Plug 'Shougo/ddc-matcher_head'
"  Plug 'Shougo/ddc-sorter_rank'
"  Plug 'mattn/vim-lsp-settings'
"  Plug 'prabirshrestha/vim-lsp'

  "
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
  let g:deoplete#enable_at_startup = 1
call plug#end()

autocmd BufWritePost  ~/.config/nvim/init.vim  so ~/.config/nvim/init.vim
