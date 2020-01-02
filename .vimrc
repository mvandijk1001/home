" Visual
colorscheme gruvbox
set background=dark
syntax enable 
set number
set encoding=utf8

" Bells and whistles
set hidden
set lazyredraw 
set noerrorbells
set novisualbell
set t_vb=

" Search
set ignorecase
set smartcase
set hlsearch
set incsearch 
set magic

" Tabs
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

" Control-b for buffers
map <C-B>n :bnext<cr>
map <C-B>p :bprevious<cr>
map <C-B>k :bdelete<cr>

" Status line
set laststatus=2
set statusline=
set statusline+=%#DiffAdd#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#DiffChange#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#DiffDelete#%{(mode()=='r')?'\ \ RPLACE\ ':''}
set statusline+=%#Cursor#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=\ %n\  " buffer number
set statusline+=%#Visual#
set statusline+=%{&paste?'\ PASTE\ ':''}
set statusline+=%{&spell?'\ SPELL\ ':''}
set statusline+=%#CursorIM#
set statusline+=\%r  " readonly flag
set statusline+=\%m  " modified flag
set statusline+=%#DiffAdd#
set statusline+=\ %{getcwd()}/\  " current dir
set statusline+=%#CursorLine#
set statusline+=\%f\  " relative file path
set statusline+=%=
set statusline+=%#CursorLine#
set statusline+=\ %Y\  " file type
set statusline+=%#CursorIM#
set statusline+=\ %3l:%-2c\  " line:column
set statusline+=%#DiffAdd#
set statusline+=\ %L\  " 

