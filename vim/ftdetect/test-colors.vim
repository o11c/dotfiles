if exists("b:did_ftplugin")
  finish
endif

let b:did_ftplugin = 1
au BufRead,BufNewFile *.test-colors set filetype=test-colors
