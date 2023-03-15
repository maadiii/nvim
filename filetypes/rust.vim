autocmd FileType rs map <leader>b :Cclean<CR>:Cbuild<CR>
autocmd FileType rs map <leader>r :Crun<CR>
autocmd FileType rs map <leader>c :Ccheck<CR>
autocmd FileType rs map <leader>l :Cclean<CR>
autocmd FileType rs map <leader>u :Cupdate<CR>
autocmd FileType rs map <leader>t :RustTest<CR>
autocmd FileType rs map <leader>T :Ctest<CR>

let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1

au BufNewFile,BufRead *.rs set colorcolumn=61
