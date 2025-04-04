autocmd BufWritePost *.js,*.jsx,*.ts,*.tsx :silent! !prettier --write %

au BufNewFile,BufRead *.js
    \ setlocal tabstop=2 |
    \ setlocal softtabstop=2 |
    \ setlocal shiftwidth=2 |
    \ setlocal expandtab |
    \ setlocal autoindent |
    \ setlocal fileformat=unix |
	\ set filetype=javascriptreact

au BufNewFile,BufRead *.ts
    \ setlocal tabstop=2 |
    \ setlocal softtabstop=2 |
    \ setlocal shiftwidth=2 |
    \ setlocal expandtab |
    \ setlocal autoindent |
    \ setlocal fileformat=unix |
	\ set filetype=typescript


au BufRead *.js nnoremap <silent><leader>s :NodeInspectStart<cr>
au BufRead *.js nnoremap <silent><leader>r :NodeInspectRun<cr>
au BufRead *.js nnoremap <silent><leader>n :NodeInspectStepOver<cr>
au BufRead *.js nnoremap <silent><leader>i :NodeInspectStepInto<cr>
au BufRead *.js nnoremap <silent><leader>o :NodeInspectStepOut<cr>
au BufRead *.js nnoremap <silent><leader>e :NodeInspectStop<cr>
au BufRead *.js nnoremap <silent><leader>b :NodeInspectToggleBreakpoint<cr>
au BufRead *.js nnoremap <silent><leader>da :NodeInspectRemoveAllBreakpoints<cr>
au BufRead *.js nnoremap <silent><leader>dw :NodeInspectToggleWindow<cr>
au BufRead *.ts nnoremap <silent><leader>s :NodeInspectStart<cr>
au BufRead *.ts nnoremap <silent><leader>r :NodeInspectRun<cr>
au BufRead *.ts nnoremap <silent><leader>n :NodeInspectStepOver<cr>
au BufRead *.ts nnoremap <silent><leader>i :NodeInspectStepInto<cr>
au BufRead *.ts nnoremap <silent><leader>o :NodeInspectStepOut<cr>
au BufRead *.ts nnoremap <silent><leader>e :NodeInspectStop<cr>
au BufRead *.ts nnoremap <silent><leader>b :NodeInspectToggleBreakpoint<cr>
au BufRead *.ts nnoremap <silent><leader>da :NodeInspectRemoveAllBreakpoints<cr>
au BufRead *.ts nnoremap <silent><leader>dw :NodeInspectToggleWindow<cr>
