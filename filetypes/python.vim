au BufNewFile,BufRead *.py set colorcolumn=79
autocmd BufWritePre *.py execute ':Black'

autocmd FileType python map <buffer> <leader>r :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <leader>r <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
