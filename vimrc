" based on https://gist.github.com/3194336
" modified somewhat just to revert to what I had ...
" TODO update it more
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
set title

set scrolloff=10
set tabpagemax=50

syntax on
set hlsearch
filetype plugin indent on

augroup vimrcEx
au!
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif
augroup END

" a lisp dialect
autocmd BufRead,BufNewFile *.sex set filetype=sex

command W :w
command Wq :wq

" Run this once in the shell:
" $ git clone git://github.com/MarcWeber/vim-addon-manager ~/.vim/vim-addons/vim-addon-manager
set runtimepath+=~/.vim/vim-addons/vim-addon-manager

" Tell VAM which plugins to fetch & load:
call vam#ActivateAddons(['github:proyvind/Cpp11-Syntax-Support'])
" call vam#ActivateAddons(['github:Rip-Rip/clang_complete'])
"call vam#ActivateAddons(['github:oblitum/clang_complete'])
" call vam#ActivateAddons(['Rainbow_Parentheses_Improved_'])
call vam#ActivateAddons(['github:oblitum/rainbow'])

" call vam#ActivateAddons(['github:flazz/vim-colorschemes'])
" call vam#ActivateAddons(['github:jiangmiao/auto-pairs'])

" C++
au FileType cpp,objcpp set syntax=cpp11

au BufNewFile,BufRead *
\ if expand('%:e') =~ '^\(h\|hh\|hxx\|hpp\|ii\|ixx\|ipp\|inl\|txx\|tpp\|tpl\|cc\|cxx\|cpp\)$' |
\   if &ft != 'cpp'                                                                           |
\     set ft=cpp                                                                              |
\   endif                                                                                     |
\ endif

let g:rainbow_operators = 2
au FileType c,cpp,objc,objcpp call rainbow#activate()
