
call plug#begin('~/.config/nvim/plugged')

" #Flutter Plugins {{{
	Plug 'thosakwe/vim-flutter'
	Plug 'natebosch/vim-lsc'
	Plug 'natebosch/vim-lsc-dart'
	Plug 'jiangmiao/auto-pairs'
	Plug 'dart-lang/dart-vim-plugin'
	Plug 'Neevash/awesome-flutter-snippets'
"" }}}

" #Laravel Plugins {{{
	Plug 'tpope/vim-dispatch'             "| Optional
	Plug 'tpope/vim-projectionist'        "|
	Plug 'noahfrederick/vim-composer'     "|
	Plug 'noahfrederick/vim-laravel'
" }}}
"
" # React {{{
	Plug 'pangloss/vim-javascript'
	Plug 'leafgarland/typescript-vim'
	Plug 'maxmellon/vim-jsx-pretty'
	Plug 'SirVer/ultisnips'
	Plug 'mlaursen/vim-react-snippets'
	Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
" }}}


" #Interface Plugins {{{
	Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	Plug 'terryma/vim-multiple-cursors'

	" Theme
	Plug 'edkolev/tmuxline.vim'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	Plug 'ryanoasis/vim-devicons'
	Plug 'mhinz/vim-startify'
	Plug 'tomtom/tcomment_vim'
	Plug 'Yggdroot/indentLine'
	Plug 'rbgrouleff/bclose.vim'

	Plug 'leafOfTree/vim-vue-plugin'

	Plug 'airblade/vim-gitgutter'
	Plug 'mattn/emmet-vim'

	Plug 'psliwka/vim-smoothie'

	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'

	Plug 'folke/which-key.nvim'
" }}}

call plug#end()
