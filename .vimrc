filetype plugin indent on

nnoremap <C-h><C-h> :<C-u>help<Space><C-r><C-w><Enter>
noremap j gj
noremap k gk
noremap gj j
noremap gk k

inoremap <expr> ,df strftime('%Y-%m-%d %T')
inoremap <expr> ,dd strftime('%Y-%m-%d')
inoremap <expr> ,dt strftime('%H:%M:%S')

nnoremap gc '[v']
vnoremap gc :<C-u>normal gc<Enter>
onoremap gc :<C-u>normal gc<Enter>

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
set visualbell t_vb=
set noerrorbells
set ignorecase
set smartcase
set autoindent
set mouse=a
set title
set noswapfile
set nowrap
set clipboard+=unnamed

autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=DarkGreen
au BufNewFile,BufRead * match ZenkakuSpace /　/

"command! Cp932 edit ++enc=cp932
"command! Eucjp edit ++ enc=euc-jp
"command! Iso2022jp edit ++enc=iso-2022-jp
"command! Utf8 edit ++enc=utf-8
"command! Jis Iso2022jp
"command! Sjis Cp932

"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
if has('vim_starting')
  if &compatible
    set nocompatible
  endif
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'gkz/vim-ls'
NeoBundle 'chase/vim-ansible-yaml'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'wavded/vim-stylus'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'junegunn/fzf', {
  \ 'build': {
  \   'others': '$HOME/.vim/bundle/fzf/install'
  \   }
  \ }
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'rking/ag.vim'

if executable('ag')
  let g:ctrlp_use_caching=0
  let g:ctrlp_user_command='ag %s -i --nocolor --nogroup -g ""'
endif

call neobundle#end()

NeoBundleCheck

"-------------------------
" End Neobundle Settings.
"-------------------------

" hybrid
let g:hybrid_use_Xresources = 1
set background=dark
colorscheme hybrid
syntax on

" vim-coffee-script
au BufRead,BufNewFile,BufReadPre *.coffee   set filetype=coffee
