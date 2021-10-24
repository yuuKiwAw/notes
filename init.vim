"""""""""""""""""""""""""""""""""""
syntax on
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set number
set encoding=utf-8
set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu

set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

set showmatch
set tabstop=2
set shiftwidth=4
set softtabstop=2
" set list

set mouse=a
set laststatus=2
"""""""""""""""""""""""""""""""""""
map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>

map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>
"""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

" Theme && color
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'luochen1990/rainbow'

" Code Complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}



call plug#end()

" 显示airline buffer栏目
let g:airline#extensions#tabline#enabled = 1
" 彩虹括号
let g:rainbow_active = 1

"""""""""""""""""""""""""""""""""""
