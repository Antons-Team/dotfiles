syntax on
set number
set t_Co=256
set showmatch
filetype plugin indent on

let $RTP=split(&runtimepath, ',')[0]
let $RC="HOME/.vim/vimrc"


" Better copy and paste
set pastetoggle=<F2>
set clipboard=unnamed

" Move between windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Remap leader key
let mapleader = ","

" map sort function to a key
vnoremap <Leader>s :sort<CR>

" Useful settings
set undolevels=700

" save undo trees in files
set undofile
set undodir=~/.config/nvim/undo


" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab


" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase





highlight ColorColumn ctermbg=8 guibg=lightgrey
set wildmenu
set mouse=a
set ruler
set cursorline
set backspace=indent,eol,start
set hidden
filetype indent on

call plug#begin('~/.vim/plugged')
	Plug 'vim-airline/vim-airline'
	Plug 'arcticicestudio/nord-vim'
    Plug 'davidhalter/jedi-vim' 
    "Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'wakatime/vim-wakatime'
    Plug 'udalov/kotlin-vim'
call plug#end()

colorscheme nord

" Vim jedi settings
let g:jedi#usages_command = "<leader>z"
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>


