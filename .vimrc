set number "行号
set showmatch "匹配括号
set mouse=a "鼠标模式开启
set t_Co=256 "启用256色

set relativenumber 
set scrolloff=5
set laststatus=2 "显示状态栏
set  ruler "标尺状态

set showmatch "搜索设置
set hlsearch
set incsearch

set ignorecase
syntax on "自动语法高亮
filetype plugin indent on "文件类系检测

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'valloric/youcompleteme'
call plug#end()


"   ####快捷键映射####
map <F3> :NERDTreeMirror<CR> 
map <F3> :NERDTreeToggle<CR>



