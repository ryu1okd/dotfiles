filetype plugin indent on

" 表示行と論理行カーソル移動の置き換え
noremap j gj
noremap k gk
noremap gj j
noremap gk k

" 検索強調を画面リロード時に消す
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" ノーマルモードで改行を挿入する
noremap <C-j> o<ESC>
noremap <CR> i<CR><ESC>

" 設定
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,Sjis,euc-jp
set backspace=eol,indent,start
set showmode
set showcmd
set incsearch
set hlsearch
set expandtab
set tabstop=2
set shiftwidth=2
set number
set scrolloff=5
set noerrorbells
set autoindent
set mouse=a
set title
set noswapfile
set nowrap
set clipboard+=unnamed
set ignorecase
set smartcase
set ruler

set cursorline
set cursorcolumn

" netrw
let g:netrw_browse_split = 0

" 全角文字をハイライト
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=DarkGreen
au BufNewFile,BufRead * match ZenkakuSpace /　/

"---------- プラグイン管理 Dein ------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('~/.vim/dein')

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('gkz/vim-ls')
call dein#add('chase/vim-ansible-yaml')
call dein#add('derekwyatt/vim-scala')
call dein#add('digitaltoad/vim-jade')
call dein#add('wavded/vim-stylus')
call dein#add('editorconfig/editorconfig-vim')
call dein#add('tpope/vim-fugitive')
call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('rking/ag.vim')
call dein#add('kannokanno/previm')
call dein#add('tyru/open-browser.vim')
" Color Theme
"call dein#add('w0ng/vim-hybrid')

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
"-----------------------------------------

" Previm
autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown

" color theme 適用
set background=dark
"colorscheme hybrid
colorscheme slate
