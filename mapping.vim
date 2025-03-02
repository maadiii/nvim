set timeoutlen=500
nnoremap <silent> <C-T> :tabnew<CR>

vnoremap x "_d
nnoremap x v"_d
vnoremap <silent> c "_c
nnoremap <silent> cc "_cc
nnoremap <silent> ce "_ce
nnoremap <silent> cb "_cb
nnoremap <silent> cw "_cw
nnoremap <silent> ciw "_ciw
nnoremap <silent> ciW "_ciW
nnoremap <silent> ci{ "_ci{
nnoremap <silent> ci} "_ci}
nnoremap <silent> ci( "_ci(
nnoremap <silent> ci) "_ci)
nnoremap <silent> ci[ "_ci[
nnoremap <silent> ci] "_ci]
nnoremap <silent> ci< "_ci<
nnoremap <silent> ci> "_ci>
nnoremap <silent> ci" "_ci"
nnoremap <silent> ci' "_ci'
nnoremap <silent> ci` "_ci`
nnoremap <silent> caw vaw"_c
nnoremap <silent> caW vaW"_c
nnoremap <silent> ca{ va{"_c
nnoremap <silent> ca} va}"_c
nnoremap <silent> ca( va("_c
nnoremap <silent> ca) va)"_c
nnoremap <silent> ca[ va["_c
nnoremap <silent> ca] va]"_c
nnoremap <silent> ca< va<"_c
nnoremap <silent> ca> va>"_c
nnoremap <silent> ca" va""_ci
nnoremap <silent> ca' va'"_ci
nnoremap <silent> ca` va`"_ci
nnoremap <silent> c$ v$h"_c

nnoremap <silent> dd "_dd
nnoremap <silent> db "_db
nnoremap <silent> de "_de
nnoremap <silent> dw "_dw
nnoremap <silent> diw "_diw
nnoremap <silent> diW "_diW

nnoremap <LEADER><LEADER> :Telescope find_files <CR>
nnoremap <LEADER>g :Telescope live_grep<CR>

"Replace current word with clipboard content
nnoremap <M-p> viw"_dP
"Replace selected range with ClipBoard
vnoremap p "_dP

"Search and replace
nnoremap <F3> :CocSearch 

" Jump to next error with Ctrl-n and previous error with Ctrl-m. Close the
" quickfix window with <leader>a
nnoremap <leader>a :cclose<CR>

nnoremap <leader>B :Buffers<CR>

if has("nvim")
  au TermOpen * tnoremap <Esc> <c-\><c-n>
  au FileType fzf tunmap <Esc>
endif

if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><expr> <c-space> coc#refresh()
endif
