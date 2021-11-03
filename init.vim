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
set t_Co=256

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

""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')
"call plug#begin('C:\Users\c5446\AppData\Local\nvim\plugged')

" Theme && color
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'luochen1990/rainbow'  " 彩虹括号
Plug 'Yggdroot/indentLine'  " 可视化缩进

Plug 'skywind3000/vim-terminal-help'  " 终端插件
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

"""""""""""""""""""""""""""""""""""

" 主题颜色
colorscheme typewriter-night
let g:airline_theme = 'typewriter'
" Change the cursor from block to i-beam in INSERT mode
let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"
augroup myCmds
  au!
  autocmd VimEnter * silent !echo -ne "\e[1 q"
augroup END

" airline设置
let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1

" 彩虹括号
let g:rainbow_active = 1
" 可视化缩进
let g:indent_guides_guide_size            = 1  " 指定对齐线的尺寸
let g:indent_guides_start_level           = 2  " 从第二层开始可视化显示缩进


""""""""""""""""""""""""""""""""""""

" coc-settings
let g:coc_global_extensions = [
\ 'coc-html',
\ 'coc-tsserver',
\ 'coc-vetur',
\ 'coc-eslint',
\ 'coc-prettier',
\ 'coc-go',
\ 'coc-pyright',
\ 'coc-json',
\	'coc-vimlsp',
\ 'coc-git',
\ 'coc-snippets',
\ 'coc-markdownlint']

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

""""""""""""""""""""""""""""""""""""
