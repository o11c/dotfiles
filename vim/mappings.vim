" commands
command W :w
command Wq :wq

" normal mode keys
nmap <Leader>hn :echo synIDattr(synID(line("."), col("."), 1), "name")<CR>
nmap <Leader>n :w<CR>:cnext<CR>
nmap <Leader>p :w<CR>:cprevious<CR>

" insert mode keys


