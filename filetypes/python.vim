au FileType python nmap <silent> <leader>b :let a='import pudb; pudb.set_trace()'\|-1put=a\|:w<CR>

au BufNewFile,BufRead *.py set colorcolumn=79
autocmd BufWritePre *.py execute ':Black'

autocmd FileType python map <buffer> <leader>r :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
au FileType python setlocal formatprg=autopep8\ -
