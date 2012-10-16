set nocompatible
set backspace=indent,eol,start
set backup
set history=50
set ruler
set showcmd
set incsearch
set relativenumber

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

map Q gq
inoremap <C-U> <C-G>u<C-U>

if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

filetype plugin indent on

augroup vimrcEx
au!
autocmd FileType text setlocal textwidth=78
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif
augroup END

if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

autocmd syntax * call rainbow#activate()
autocmd BufRead,BufNewFile *.fwd set filetype=cpp
autocmd BufRead,BufNewFile *.tcc set filetype=cpp
autocmd BufRead,BufNewFile *.sex set filetype=sex
