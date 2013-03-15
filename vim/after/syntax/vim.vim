" Vim syntax file extension
" Language: vim
" Maintainer: o11c
" Latest Revision: 2013-03-07

function! s:c(idx)
  " funky formula used by xterm's palette
  return printf("%02x", a:idx * 40 + 55 * (a:idx != 0))
endfunction

for r in range(0, 5)
  for g in range(0, 5)
    for b in range(0, 5)
      let i = 16 + 36*r + 6*g + b
      let h = "#" . s:c(r) . s:c(g) . s:c(b)
      exe "syn match RGB" . r . g . b . " /" . h . "/ containedin=vimHiGuiRgb,vimString"
      exe "highlight RGB" . r . g . b . " ctermbg=" . i . " guibg=" . h
      if 3*r + 6*g + 1*b >= 25
        exe "highlight RGB" . r . g . b . " ctermfg=16 guibg=#000000 guifg=#ffffff"
      else
        exe "highlight RGB" . r . g . b . " ctermfg=231 guibg=#ffffff guifg=#000000"
      endif
    endfor
  endfor
endfor
unlet i r g b h
