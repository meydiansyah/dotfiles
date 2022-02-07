
call plug#begin('~/.config/nvim/plugged')

" #Flutter Plugins {{{
	Plug 'thosakwe/vim-flutter'
	Plug 'natebosch/vim-lsc'
	Plug 'natebosch/vim-lsc-dart'
"" }}}

" #Larave Plugins {{{
	Plug 'tpope/vim-dispatch'             "| Optional
	Plug 'tpope/vim-projectionist'        "|
	Plug 'noahfrederick/vim-composer'     "|
	Plug 'noahfrederick/vim-laravel'
" }}}

" #Interface Plugins {{{
	Plug 'preservim/nerdtree'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'terryma/vim-multiple-cursors'
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
	Plug 'arcticicestudio/nord-vim'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'ryanoasis/vim-devicons'
	Plug 'mhinz/vim-startify'
	Plug 'voldikss/vim-floaterm'
	Plug 'tomtom/tcomment_vim'
	Plug 'Yggdroot/indentLine'
	Plug 'rbgrouleff/bclose.vim'
	Plug 'jiangmiao/auto-pairs'
	Plug 'dart-lang/dart-vim-plugin'
	Plug 'nvim-lua/plenary.nvim'

	Plug 'leafOfTree/vim-vue-plugin'

	Plug 'airblade/vim-gitgutter'
	Plug 'mattn/emmet-vim'

	Plug 'psliwka/vim-smoothie'
" }}}

" #Removed Plugins {{{
	"Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
	"Plug 'dart-lang/dart-vim-plugin'
	"Plug 'dracula/vim'
	"Plug 'torta/flutter-lazy.vim'
	"Plug 'KabbAmine/vCoolor.vim'
" }}}
call plug#end()
