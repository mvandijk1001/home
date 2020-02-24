"==============================================================================
" KEYBINDS

" Reload ~/.vimrc
map <Leader>r :source ~/.vimrc<cr>

" Control-b for buffers
map <C-B>n :bnext<cr>
map <C-B><C-N> :bnext<cr>
map <C-B>p :bprevious<cr>
map <C-B><C-P> :bprevious<cr>
map <C-B>k :bdelete<cr>
map <C-B><C-K> :bdelete<cr>
map <C-B>f :brewind<cr>
map <C-B><C-F> :brewind<cr>

" Toggle line numbers
map <Leader>n :set number!<cr>

" Ack search
map <Leader>a :Ack <cword><cr>

" netrw file browser open
nmap <Leader>e :Lexplore<cr>

" Tagbar toggle
nmap <Leader>l :TagbarToggle<cr>

" clang format
map <Leader>c :py3file ~/.vim/script/clang-format.py<cr>

" Turn off highlighting
nmap <Leader>h :noh<cr>

"==============================================================================
" SETTINGS

" Visual
colorscheme gruvbox
set background=dark
syntax on
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

" Status line
set laststatus=2
set statusline=
set statusline+=%#DiffAdd#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#DiffDelete#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#DiffChange#%{(mode()=='r')?'\ \ RPLACE\ ':''}
set statusline+=%#Cursor#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=\ %n\  " buffer number
set statusline+=%#Visual#
set statusline+=%{&paste?'\ PASTE\ ':''}
set statusline+=%{&spell?'\ SPELL\ ':''}
set statusline+=%#CursorIM#
set statusline+=\%r  " readonly flag
set statusline+=\%m  " modified flag
set statusline+=%#CursorIM#
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

" netrw file browser
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:netrw_browse_split = 4

" tagbar
let g:tagbar_autoclose = 1
let g:tagbar_compact = 1
