source $HOME/dotfiles/nvim/.set.vim
source $HOME/dotfiles/nvim/.plug.vim
source $HOME/dotfiles/nvim/.map.vim
source $HOME/dotfiles/nvim/.let.vim

syntax enable

if exists('g:loaded_webdevicons')
    call webdevicons#refresh()
endif

filetype plugin indent on

hi! Normal guibg=NONE ctermbg=NONE
hi! NonText guibg=NONE ctermbg=NONE
hi! VertSplit ctermbg=NONE guibg=NONE

autocmd BufWinLeave,FocusLost,WinLeave * silent :up

autocmd FileType json syntax match Comment +\/\/.\+$+
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

autocmd FileType html,css,php EmmetInstall
