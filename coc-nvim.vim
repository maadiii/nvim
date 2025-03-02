nnoremap  <silent><nowait> <space>a :<C-u>Telescope coc diagnostics theme=dropdown<CR>
nnoremap  <silent><nowait> <space>b :<C-u>Telescope coc workspace_diagnostics theme=dropdown<CR>
nnoremap  <silent><nowait> <space>c :<C-u>Telescope coc commands theme=dropdown<CR>
nnoremap  <silent><nowait> <space>o :<C-u>Telescope coc document_symbols theme=dropdown<CR>
nnoremap  <silent><nowait> <space>s :<C-u>Telescope coc workspace_symbols theme=dropdown<CR>

nmap <silent><nowait> gD :<C-u>Telescope coc definitions theme=dropdown<CR>
nmap <silent><nowait> gy :<C-u>Telescope coc declarations theme=dropdown<CR>
nmap <silent><nowait> gi :<C-u>Telescope coc implementations theme=dropdown<CR>
nmap <silent><nowait> gr :<C-u>Telescope coc references theme=dropdown<CR>
nmap <silent><nowait> gc :<C-u>Telescope resume theme=dropdown<CR>

nmap <silent> gh :call CocActionAsync('doHover')<CR>
nmap <silent> gs :call CocActionAsync('jumpDefinition', 'split')<CR>
nmap <silent> gv :call CocActionAsync('jumpDefinition', 'vsplit')<CR>
nmap <leader>f <Plug>(coc-codeaction-cursor)<cr>
nmap gx <Plug>(coc-rename)
" inoremap <C-H> <C-\><C-O>:call CocActionAsync('showSignatureHelp')<cr>
nmap <C-n> <Plug>(coc-diagnostic-next)
nmap <C-m> <Plug>(coc-diagnostic-prev)

" Formatting selected code.
" map gf :call CocAction('format')<CR>
xmap gf  <Plug>(coc-format-selected)
nmap <LEADER>qf  <Plug>(coc-fix-current)

map gog :CocCommand tsserver.goToSourceDefinition<CR>
map gof :CocCommand tsserver.findAllFileReferences<CR>

" Remap keys for applying codeAction to the current buffer.
nmap <LEADER>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <LEADER>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
