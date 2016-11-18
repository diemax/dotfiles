
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
"faster ctrl-p
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

"rubocop checker for ruby files
let g:syntastic_ruby_checkers = ['rubocop']
"command W and Q if error press 
command W w
command WQ wq
command Q q
"search
set hlsearch
set incsearch
set ignorecase
let g:airline_powerline_fonts = 1
let g:Powerline_symbols='unicode'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
"para los archivos ruby los tabs son de 2 espacios
autocmd FileType ruby setlocal ts=2 sts=2 sw=2 et
autocmd FileType javascript setlocal ts=2 sts=2 sw=2 noet

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
Plugin 'xsbeats/vim-blade'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'moll/vim-bbye'
Plugin 'chriskempson/base16-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'gosukiwi/vim-atom-dark'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'tpope/vim-liquid'
Bundle 'nanotech/jellybeans.vim'
" required for snipmate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set background=dark
silent! colorscheme jellybeans
"silent! colorscheme atom-dark-256
syntax on
"set guifont=Monaco:h12
set macligatures
set guifont=Fira\ Code:h12

set t_Co=256
set nu
set tabstop=4 shiftwidth=4 expandtab
set tabstop=4 shiftwidth=4 expandtab

