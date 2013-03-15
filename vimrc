" based on https://gist.github.com/3194336
" modified somewhat just to revert to what I had ...
" TODO update it more

if &term =~ "xterm"
  set background=dark
endif
colorscheme o11c

set nocompatible
" let <Esc> time out, but not <Leader> sequences
set notimeout ttimeout timeoutlen=50
set backspace=indent,eol,start
set backup
set undofile
set history=50
set ruler
set showcmd
set incsearch
set relativenumber

"set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" defaults:
" set cinoptions=>s,e0,n0,f0,{0,}0,^0,L-1,:s,=s,l0,b0,gs,hs,N0,ps,ts,is,+s,c3,C0,/0,(2s,us,U0,w0,W0,k0,m0,j0,J0,)20,*70,#0
" set cinkeys=0{,0},0),:,0#,!^F,o,O,e
"
" maybe add N-s to not indent in namespaces
set cinoptions=Ls,:0,g0,U1,m1
"set cinkeys=

set title

set linebreak
set scrolloff=10
set tabpagemax=50
set cmdheight=3
let maplocalleader = ","

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

source ~/conf/vim/mappings.vim

" Run this once in the shell:
" $ git clone git://github.com/MarcWeber/vim-addon-manager ~/.vim/vim-addons/vim-addon-manager
set runtimepath+=~/.vim/vim-addons/vim-addon-manager

" Tell VAM which plugins to fetch & load:
call vam#ActivateAddons(['github:proyvind/Cpp11-Syntax-Support'])
" call vam#ActivateAddons(['github:Rip-Rip/clang_complete'])
"call vam#ActivateAddons(['github:oblitum/clang_complete'])

" call vam#ActivateAddons(['github:flazz/vim-colorschemes'])
" call vam#ActivateAddons(['github:jiangmiao/auto-pairs'])
call vam#ActivateAddons(['emacsmodeline'])

call vam#ActivateAddons(['github:dahu/vimple'])
call vam#ActivateAddons(['github:Raimondi/vim-buffalo'])
call vam#ActivateAddons(['CSApprox'])
"\  "#00afff",
"\  "#87ff00",
"\  "#ffff00",
"\  "#ff8700",
"\  "#ff0087",
"\  "#af00ff",
let g:rainbow_guifgs = [
\ "#ff0000",
\ "#ff8700",
\ "#afff00",
\ "#5fffaf",
\ "#00afff",
\ "#5f5fff",
\ "#af00d7",
\ "#870000",
\ "#875f00",
\ "#5f8700",
\ "#00af00",
\ "#00afaf",
\ "#005fff",
\ "#5f00d7",
\ "#af5f5f",
\]
let g:rainbow_ctermfgs = []

function s:approx(str)
  let r = str2nr(a:str[1:2], 16)
  let g = str2nr(a:str[3:4], 16)
  let b = str2nr(a:str[5:6], 16)
  return csapprox#per_component#Approximate(r, g, b)
endfunction

for str in g:rainbow_guifgs
  call add(g:rainbow_ctermfgs, s:approx(str))
endfor
unlet str

call vam#ActivateAddons(['github:oblitum/rainbow'])


" C++
au FileType cpp,objcpp set syntax=cpp11
au FileType yaml set softtabstop=2 shiftwidth=2
au FileType vim set softtabstop=2 shiftwidth=2
au BufNewFile,BufRead *.ll set filetype=llvm
au FileType llvm set softtabstop=2 shiftwidth=2
au FileType llvm source /usr/share/vim/addons/syntax/llvm-3.2.vim/llvm.vim

"au BufNewFile,BufRead *.h,*.hpp,*.tcc,*.cpp set ft=cpp

let g:rainbow_operators = 2
au Syntax * call rainbow#load() " work around a bug
au Syntax * call rainbow#activate()
