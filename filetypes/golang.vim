augroup go
  autocmd!

  " :GoBuild and :GoTestCompile
  autocmd FileType go nmap <silent> gb :w<CR>:<C-u>call <SID>build_go_files()<CR>

  " :GoTest
  autocmd FileType go nmap <leader>T  :w<CR><Plug>(go-test)

  " :GoTestFunc
  autocmd FileType go nmap <leader>t  :w<CR><Plug>(go-test-func)

  " :GoCoverageToggle
  autocmd FileType go nmap <leader>c :w<CR><Plug>(go-coverage-toggle)

  autocmd FileType go nmap <leader>r :w<CR>:!go run .
augroup END

" build_go_files is a custom function that builds or compiles the test file.
" It calls :GoBuild if its a Go file, or :GoTestCompile if it's a test file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

au BufNewFile,BufRead *.go
    \ setlocal tabstop=2 |
    \ setlocal softtabstop=2 |
    \ setlocal shiftwidth=2 |
    \ setlocal expandtab |
    \ setlocal autoindent |
    \ setlocal fileformat=unix

" autocmd BufWritePost *.go !clear && golangci-lint run %:p:h
" autocmd BufWritePost *.go !gci -w %:p
" autocmd BufWritePost *.go !gofumpt -l -w %:p
" autocmd BufWritePost *.go e

" vim-go
let g:go_fmt_command = 'gofumpt'
" let g:go_fmt_command = 'gofmt'
" let g:go_fmt_command = 'goimports'
au BufWritePre,FileWritePre *.go :GoFmt
au BufWritePre,FileWritePre *.go :GoImports
nmap <C-g> :GoDecls<cr>
nmap gpi :GoImpl<cr>

let g:go_metalinter_command = 'golangci-lint run'
let g:go_highlight_types = 1
let g:go_highlight_fields = 1 
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1
" let g:go_auto_type_info = 1
let g:go_decls_includes = "func,type"

" Delv
nmap gpp :DlvAddBreakpoint<CR>
nmap gpd :DlvRemoveBreakpoint<CR>
nmap gpc :DlvClearAll<CR>
nmap gll :DlvDebug --wd=../../
nmap glt :DlvTest --wd=../../
let g:delve_new_command="new"
" coc
autocmd FileType go nmap <leader>tap :CocCommand go.tags.add.prompt<CR>
autocmd FileType go nmap <leader>tal :CocCommand go.tags.add.line<CR>
autocmd FileType go nmap <leader>trp :CocCommand go.tags.remove.prompt<CR>
autocmd FileType go nmap <leader>trl :CocCommand go.tags.clear.line<CR>
autocmd FileType go nmap <leader>tgf :CocCommand go.test.generate.function<CR>


" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

autocmd BufWritePost *.go silent! !gci write %:p
" autocmd BufWritePost *.go silent! e

let g:go_gopls_enabled = 0
let g:go_def_mapping_enabled=0
