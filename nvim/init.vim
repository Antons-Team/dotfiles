syntax on
set t_Co=256
set showmatch
filetype plugin indent on
set relativenumber

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

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> do <Plug>(coc-codeaction)

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

" Nerd tree stuff
nnoremap <C-n> :NERDTreeToggle<CR>

" format on save TypeScipt
autocmd BufWritePre *.tsx Neoformat
autocmd BufWritePre *.ts Neoformat

let g:lightline = {
            \ 'colorscheme': 'wombat',
            \ }



highlight ColorColumn ctermbg=8 guibg=lightgrey
set wildmenu
set mouse=a
set ruler
set cursorline
set backspace=indent,eol,start
set hidden
filetype indent on

call plug#begin('~/.vim/plugged')
    Plug 'itchyny/lightline.vim'
    Plug 'arcticicestudio/nord-vim'
    Plug 'prettier/vim-prettier'
    Plug 'sbdchd/neoformat'
    Plug 'neoclide/coc.nvim'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'scrooloose/nerdtree'
    Plug 'leafgarland/typescript-vim'
    Plug 'peitalin/vim-jsx-typescript'
call plug#end()

colorscheme nord
" Vim jedi settings
let g:jedi#usages_command = "<leader>z"
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>
