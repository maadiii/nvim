au BufRead *.rs nmap <leader>b :Cbuild<CR>
au BufRead *.rs nmap <leader>r :Crun<CR>
au BufRead *.rs nmap <leader>c :Ccheck<CR>
au BufRead *.rs nmap <leader>l :Cclean<CR>
au BufRead *.rs nmap <leader>u :Cupdate<CR>
au BufRead *.rs nmap <leader>t :RustTest<CR>
au BufRead *.rs nmap <leader>T :Ctest<CR>

let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1

au BufNewFile,BufRead *.rs set colorcolumn=61
