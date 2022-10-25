
call plug#begin('~/.config/nvim/plugged')

" #Flutter Plugins {{{
	Plug 'thosakwe/vim-flutter'
	Plug 'dart-lang/dart-vim-plugin'
	Plug 'Neevash/awesome-flutter-snippets'

	Plug 'nvim-lua/plenary.nvim'
	Plug 'akinsho/flutter-tools.nvim'
"" }}}

" " #Laravel Plugins {{{
	Plug 'tpope/vim-dispatch'             "| Optional
	Plug 'tpope/vim-projectionist'        "|
	Plug 'noahfrederick/vim-composer'     "|
	Plug 'noahfrederick/vim-laravel'
"
	Plug 'jwalton512/vim-blade'
" " }}}
"
" # React {{{
	Plug 'pangloss/vim-javascript'
	" Plug 'leafgarland/typescript-vim'
	" Plug 'maxmellon/vim-jsx-pretty'
	" Plug 'SirVer/ultisnips'
	" Plug 'mlaursen/vim-react-snippets'
	Plug 'posva/vim-vue'
" }}}

	Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

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
	" Plug 'mhinz/vim-startify'
	Plug 'tomtom/tcomment_vim'
	Plug 'Yggdroot/indentLine'
	Plug 'rbgrouleff/bclose.vim'


	Plug 'airblade/vim-gitgutter'
	Plug 'mattn/emmet-vim'

	" Plug 'psliwka/vim-smoothie'

	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'

	Plug 'folke/which-key.nvim'
	Plug 'phaazon/hop.nvim'

	Plug 'leafOfTree/vim-matchtag'
	Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
	
	Plug 'mhartington/oceanic-next'

	Plug 'samoshkin/vim-mergetool'
	Plug 'tpope/vim-fugitive'
	Plug 'rcarriga/nvim-notify'
	Plug 'udalov/kotlin-vim'
" }}}

call plug#end()
