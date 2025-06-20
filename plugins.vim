call plug#begin('~/.local/share/nvim/plugged')
Plug 'majutsushi/tagbar'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'kyazdani42/nvim-web-devicons' " optional, for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'gutenye/json5.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'antoinemadec/coc-fzf', {'branch': 'release'}
Plug 'danro/rename.vim' 
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'cespare/vim-toml'
Plug 'briones-gabriel/darcula-solid.nvim'
Plug 'doums/darcula'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'gilsondev/searchtasks.vim'
Plug 'folke/todo-comments.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'fannheyward/telescope-coc.nvim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-dadbod'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'iloginow/vim-stylus'
Plug 'nvim-lua/plenary.nvim'
Plug 'sindrets/diffview.nvim'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'EdenEast/nightfox.nvim'
Plug 'jacoborus/tender.vim'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'SirVer/ultisnips'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'sebdah/vim-delve'
Plug 'plasticboy/vim-markdown'
Plug 'mgedmin/coverage-highlight.vim'
Plug 'romkatv/powerlevel10k'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'tenfyzhong/tagbar-rust.vim'
Plug 'tomlion/vim-solidity'
Plug 'mhartington/oceanic-next'
Plug 'raghur/vim-ghost', {'do': ':GhostInstall'}
Plug 'psf/black', { 'branch': 'main' }
Plug 'mxw/vim-jsx'
Plug 'mfussenegger/nvim-dap'
Plug 'leoluz/nvim-dap-go'
Plug 'puremourning/vimspector'
Plug 'ray-x/web-tools.nvim'
Plug 'mattn/emmet-vim'
Plug 'joshdick/onedark.vim'
Plug 'pangloss/vim-javascript'
Plug 'Yggdroot/indentLine'
Plug 'pangloss/vim-javascript'
Plug 'neoclide/coc.nvim'
Plug 'fratajczak/one-monokai-vim'
Plug 'frazrepo/vim-rainbow'
Plug 'tpope/vim-dotenv'
Plug 'dart-lang/dart-vim-plugin'
call plug#end()
