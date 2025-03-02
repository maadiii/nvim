source ~/.config/nvim/airline.vim
source ~/.config/nvim/coc-nvim.vim
source ~/.config/nvim/coc-explorer.vim
" source ~/.config/nvim/PopupBuffer.vim
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/indentline.vim
source ~/.config/nvim/mapping.vim
source ~/.config/nvim/startify.vim
source ~/.config/nvim/filetypes/golang.vim
source ~/.config/nvim/filetypes/rust.vim
source ~/.config/nvim/filetypes/python.vim
source ~/.config/nvim/tagbar.vim
source ~/.config/nvim/lua.vim

set clipboard+=unnamedplus
set noshowmode  " to get rid of thing like --INSERT--
set noshowcmd  " to get rid of display of last command
set shortmess+=F  " to get rid of the file name displayed in the command line bar
set noarabicshape
syntax enable
set scrolloff=7
set cursorline
set number relativenumber
set nowrap
set tabstop=4
set shiftwidth=4
set autoindent
set splitbelow
set splitright
set undofile
set mouse=
set guicursor=n-v-c-sm:block

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"undercurl :
"First off, you have to use cterm=undercurl, not just gui=undercurl. Even
"then you have to make Vim output the right escape sequences to the
"terminal with
" let &t_Cs = '\e[4:3m'
" let &t_Ce = '\e[4:0m'

" Double o within 1 second to insert new line and back to normal mode.
nmap oo o<Esc>

map <space><space> za
set foldmethod=indent
set foldnestmax=1000
set foldlevel=1000
set nofoldenable

set t_Co=256
set termguicolors
let g:rehash256 = 1
colorscheme onedark

" Press Leader+Space to turn off highlighting and clear any message already displayed.
nnoremap <leader><Space> :nohlsearch<Bar>:echo<CR>

nnoremap " :vertical resize -5<CR>
nnoremap ' :vertical resize +5<CR>
nnoremap > :res -1<CR>
nnoremap < :res +1<CR>

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
	\ set filetype=javascriptreact


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
let g:rainbow_active = 1
