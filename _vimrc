
set nocompatible        " be iMproved, required
filetype off            " required
" set the runtime path to include Vundle and initialize
set rtp+=$VIMRUNTIME/../vimfiles/bundle/vundle/
"set rtp+=~/vimfiles/bundle/vundle/
let path='$VIMRUNTIME/../vimfiles/bundle'
call vundle#rc(path)

Plugin 'gmarik/vundle'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'mattn/emmet-vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'

source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

let mapleader=","
inoremap jj <ESC>

if has("gui_running")
    set lines=45 columns=180 " GUI is running or is about to start. Maximize gvim window.
    set guifont=Consolas:h11
endif

if &t_Co >= 256 || has("gui_running")
    colorscheme Tomorrow-Night-Eighties
endif
if &t_Co > 2 || has("gui_running")
    syntax on "switch syntax highlighting on, when the terminal has colors
endif

set encoding=utf-8      " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.

"useful reference http://nvie.com/posts/how-i-boosted-my-vim
set hidden          " It hides buffers instead of closing them.
set nowrap          " don't wrap lines
set tabstop=4       " a tab is four spaces
set backspace=indent,eol,start
                    " allow backspacing over everything in insert mode
set autoindent      " always set autoindenting on
set copyindent      " copy the previous indentation on autoindenting
set number          " always show line numbers
set shiftwidth=4    " number of spaces to use for autoindenting
set shiftround      " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch       " set show matching parenthesis
set ignorecase      " ignore case when searching
set smartcase       " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
set smarttab        " insert tabs on the start of a line according to
                    "    shiftwidth, not tabstop
set hlsearch        " highlight search terms
set incsearch       " show search matches as you type

set history=1000        " remember more commands and search history
set undolevels=1000     " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title               " change the terminal's title

set nobackup
set noswapfile
set noundofile

set expandtab
filetype plugin indent on
"autocmd filetype python set expandtab

"set tabstop=4
"set shiftwidth=4
"set softtabstop=4
"set smarttab    " insert tabs on the start of a line according to shiftwidth, not tabstop
"set smartindent
"set expandtab

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

au BufRead,BufNewFile *.md set filetype=markdown

" map Ctrl + P to CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

