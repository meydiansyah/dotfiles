source $HOME/dotfiles/nvim/.set.vim
source $HOME/dotfiles/nvim/.plug.vim
source $HOME/dotfiles/nvim/.map.vim
source $HOME/dotfiles/nvim/.let.vim

syntax enable

if exists('g:loaded_webdevicons')
    call webdevicons#refresh()
endif

colorscheme nord
" colorscheme material

filetype plugin indent on

hi! Normal guibg=NONE ctermbg=NONE
hi! NonText guibg=NONE ctermbg=NONE
hi! VertSplit ctermbg=NONE guibg=NONE

autocmd BufWinLeave,FocusLost,WinLeave * silent :up

" autocmd Filetype coc-explorer let g:indentLine_enabled = 0
autocmd Filetype json let g:indentLine_enabled = 0

autocmd FileType html,css,php EmmetInstall
