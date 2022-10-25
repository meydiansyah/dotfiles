source $HOME/dotfiles/nvim/.set.vim
source $HOME/dotfiles/nvim/.plug.vim
source $HOME/dotfiles/nvim/.map.vim
source $HOME/dotfiles/nvim/.let.vim

colorscheme OceanicNext
syntax enable

if exists('g:loaded_webdevicons')
    call webdevicons#refresh()
endif

filetype plugin indent on

hi! Normal guibg=NONE ctermbg=NONE 
hi! NonText guibg=NONE ctermbg=NONE 
hi! VertSplit ctermbg=NONE guibg=NONE ctermfg=NONE guifg=NONE cterm=NONE gui=NONE

hi LineNr guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
" hi EndOfBuffer guibg=NONE ctermbg=NONE

autocmd BufWinLeave,FocusLost,WinLeave * silent :up
autocmd VimEnter * WhichKey <ESC>

autocmd FileType json syntax match Comment +\/\/.\+$+
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
autocmd BufNewFile,BufRead *.blade.php set ft=html | set ft=phtml | set ft=blade " Fix blade auto-indent

autocmd FileType html,css,php EmmetInstall

highlight! link SignColumn LineNr

lua << EOF
	require'hop'.setup{ keys = 'etovxqpdygfblzhckisuran', jump_on_sole_occurrence = false }
EOF

"" Vim notify
lua << EOF
	require("notify")
EOF

lua << EOF
require("flutter-tools").setup {
  flutter_path = "/Users/dev/Documents/flutter/bin/flutter",
  fvm = false,
  dev_log = {
    enabled = true,
    open_cmd = "sp",
  },
  dev_tools = {
    autostart = false,
    auto_open_browser = false,
  },
  outline = {
    open_cmd = "35vnew",
    auto_open = false
  },
  closing_tags = {
    enabled = false
  },
  lsp = {
    color = {
      enabled = false,
      background = false,
      foreground = false,
      virtual_text = true,
      virtual_text_str = "■",
    },
    capabilities = function(config)
      config.specificThingIDontWant = false
      return config
    end,
    settings = {
      showTodos = true,
      completeFunctionCalls = true,
      analysisExcludedFolders = { "/Users/dev/Documents/flutter/bin/flutter"}
    }
  }
}
EOF
