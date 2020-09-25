
set nocompatible              " be iMproved, required
"filetype off                  " required
set nobackup
"disabled arrow keys
nnoremap Y y$
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap j gj
set hidden
set timeoutlen=50
set ttimeoutlen=50
"ruby syntax for Gemfile and Vagrantfile
autocmd BufNewFile,BufRead Gemfile set filetype=ruby
autocmd BufNewFile,BufRead Vagrantfile set filetype=ruby
set noswapfile
set noshowmode
set cursorline
set showcmd
set title
set autoindent
set splitright
set ruler
set wildmenu
set showmatch
let g:NERDTreeIgnore=['\~$', 'vendor']
let g:jsx_ext_required = 0
" faster ctrl-p
" ignoring files on .gitignore, source:
" https://github.com/kien/ctrlp.vim/issues/174#issuecomment-49747252
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
" git airline settings: 
let g:airline_theme='murmur'
let g:airline_powerline_fonts = 1
"let g:Powerline_symbols='unicode'
let g:airline_extensions = ['branch', 'tabline']
"let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
"command W and Q if error press 
command W w
command WQ wq
command Q q
"search
set hlsearch
set incsearch
set ignorecase

autocmd FileType ruby setlocal ts=2 sts=2 sw=2 et
autocmd FileType javascript setlocal ts=2 sts=0 sw=2

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
set laststatus=2
set timeoutlen=50
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'moll/vim-bbye'
Plugin 'tpope/vim-fugitive'
Plugin 'gosukiwi/vim-atom-dark'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'tpope/vim-liquid'
Bundle 'nanotech/jellybeans.vim'
Plugin 'w0ng/vim-hybrid'
" required for snipmate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'Raimondi/delimitMate'

" best theme ever!!
Plugin 'arcticicestudio/nord-vim'
Plugin 'junegunn/rainbow_parentheses.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set background=dark
silent! colorscheme nord
"silent! colorscheme atom-dark-256
syntax on

" Validating macOs, stolen from:
" https://vi.stackexchange.com/a/2574
if has('macunix')
    set macligatures
    set guifont=Monaco:h12
endif
" Background color issue using tmux
" source: https://stackoverflow.com/a/18224803
highlight Normal ctermbg=NONE

set t_Co=256
set nu
set tabstop=4 shiftwidth=4 expandtab
set tabstop=4 shiftwidth=4 expandtab

