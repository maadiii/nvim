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
source ~/.config/nvim/molokai.vim

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
set noexpandtab
set splitbelow
set splitright
set mouse=
set undofile

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
" set background=light
colorscheme OceanicNext
" colorscheme gruvbox

" Press Leader+Space to turn off highlighting and clear any message already displayed.
nnoremap <leader><Space> :nohlsearch<Bar>:echo<CR>

nnoremap " :vertical resize -5<CR>
nnoremap ' :vertical resize +5<CR>
nnoremap > :res -1<CR>
nnoremap < :res +1<CR>

set guicursor=n-v-c-sm:block
nmap <leader>s :terminal<cr>

let g:indent_blankline_buftype_exclude = ['terminal']
tnoremap <Esc> <C-\><C-n>
let &t_Cs = "\e[4:3m"
let &t_Ce = "\e[4:0m"
if has("nvim")
  au TermOpen * tnoremap <Esc> <c-\><c-n>
  au FileType fzf tunmap <Esc>
endif

let g:vimspector_enable_mappings = 'HUMAN'
nmap <leader>vl :call vimspector#Launch()<CR>
nmap <leader>vr :VimspectorReset<CR>
nmap <leader>ve :VimspectorEval
nmap <leader>vw :VimspectorWatch
nmap <leader>vo :VimspectorShowOutput
nmap <leader>vi <Plug>VimspectorBalloonEval
xmap <leader>vi <Plug>VimspectorBalloonEval

" for normal mode - the word under the cursor
nmap <Leader>di <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
xmap <Leader>di <Plug>VimspectorBalloonEval

let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-go', 'CodeLLDB', 'vscode-node-debug2' ]
