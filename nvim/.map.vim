let mapleader = ","
nnoremap <leader>i :source ~/dotfiles/nvim/.vimrc \| PlugInstall<CR>

"" Buffers
	nnoremap <silent> <space><space> :Buffers<CR>
	tmap <space><space>	:Buffers<CR>
	nnoremap <silent> <A-/> :BLines<CR>
	nnoremap <silent> <A-f> :Files<CR>
	nmap <leader>w :Bclose<CR>
	tmap <leader>c :exit<CR>
	nmap <leader>C :bd<CR>
	nmap <Tab><Tab> <C-^>
	nnoremap <leader>Q :qa!<CR>
	nnoremap <leader>e gt
	nnoremap <leader>q gT

	nnoremap <leader>nt :tabnew <CR>

"" Laravel
	nnoremap <leader>tenv :Eenv <CR>

"" Flutter keymap"
	nnoremap <leader>fR :FlutterRun <CR>
	nnoremap <leader>ft :FlutterOutlineToggle <CR>
	nnoremap <leader>fpg :FlutterPubGet <CR>
	nnoremap <leader>fr :FlutterReload <CR>
	nnoremap <leader>fd :FlutterDevices <CR>
	nnoremap <leader>fc :FlutterLogClear <CR>
	nnoremap <leader>fx :FlutterQuit <CR>

"" Coc
	nmap <silent> gd <Plug>(coc-definition)
	nmap <silent> gy <Plug>(coc-type-definition)
	nmap <silent> gi <Plug>(coc-implementation)
	nmap <silent> gr <Plug>(coc-references)
	xmap <leader>a <Plug>(coc-codeaction-selected) <bar> h
	nmap <leader>a <Plug>(coc-codeaction-selected) <bar> h
	
	xmap <silent> vr <Plug>(coc-range-select)
	nmap <silent> vr <Plug>(coc-range-select)

	" Use <c-space> to trigger completion.
	inoremap <silent><expr> <A-Tab> coc#refresh()

"" Symbol renaming.
	nmap <leader>rn <Plug>(coc-rename)

"" Use K to show documentation in preview window
	nnoremap <silent> <Space><Tab>		:call <SID>show_documentation()<CR>
	function! s:show_documentation()
	  if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	  elseif (coc#rpc#ready())
		call CocActionAsync('doHover')
	  else
		execute '!' . &keywordprg . " " . expand('<cword>')
	  endif
	endfunction

nmap <Tab> <Plug>(coc-snippets-expand)

"" Auto close
	inoremap <A-"> ""<left>
	inoremap <A-'> ''<left>
	inoremap <A-`> ``<left>
	inoremap <A-(> ()<left>
	inoremap <A-[> []<left>
	inoremap <A-{> {}<left>
	inoremap <A-<> <><left>
	inoremap {<CR> {<CR>}<ESC>O
	inoremap [<CR> [<CR>]<ESC>O
	inoremap (<CR> (<CR>)<ESC>O

"" Switching windows
	noremap <A-j>						<C-w>j
	noremap <A-k>						<C-w>k
	noremap <leader><Tab>				<C-w>l
	noremap <leader><S-Tab>				<C-w>h

"" Resizing windows
	nnoremap ww						<C-w>=
	nnoremap wh						:vertical resize +5 <CR>
	nnoremap wl						:vertical resize -5 <CR>
	nnoremap <A-J>						:res +5 <CR>
	nnoremap <A-K>						:res -5 <CR>

"" Movement
	nnoremap <A-l> e
	nnoremap <A-h> b

	vnoremap J :m '>+1<CR>gv=gv
	vnoremap K :m '<-2<CR>gv=gv

	inoremap <A-l> <Right>
	inoremap <A-h> <Left>
	inoremap <A-k> <Up>
	inoremap <A-j> <Down>
	inoremap <A-L> <S-Right>
	inoremap <A-H> <S-Left>
	inoremap <A-BS> <C-W>

	nnoremap <C-j> :m .+1<CR>==
	nnoremap <C-k> :m .-2<CR>==
	inoremap <C-j> <Esc>:m .+1<CR>==gi
	inoremap <C-k> <Esc>:m .-2<CR>==gi
	vnoremap <C-j> :m '>+1<CR>gv=gv
	vnoremap <C-k> :m '<-2<CR>gv=

	nmap <A-CR> zz
"" Scroll 
	map J <C-D>
	map K <C-U>
	map <A-L> 5zl
	map <A-H> 5zh

"" Nerdtree toggle
	nnoremap <silent><A-b>				:NERDTreeToggle<CR>
	nnoremap <silent><esc>				:noh<cr><esc>

"" Copy paste
	noremap YY "+y<CR>
	noremap XX "+x<CR>
	vnoremap c a{V

	" redo
	noremap <a-u> <c-R>
	
"" GitGutter
	nmap ghs <Plug>(GitGutterStageHunk)
	nmap ghu <Plug>(GitGutterUndoHunk)
	nmap g<CR> :GitGutterFold<CR>

	" preview change
	nmap ghp <Plug>(GitGutterPreviewHunk)
	" move change
	nmap gk [c
	nmap gj ]c

"" Git merge tool
	nmap <leader>mts :MergetoolStart <CR>
	nmap <leader>mtq :MergetoolStop <CR>
	nmap <leader>mtl :MergetoolPreferLocal <CR> :MergetoolStop <CR>
	nmap <leader>mtr :MergetoolPreferRemote <CR> :MergetoolStop <CR>
	nmap <leader>mtt <plug>(MergetoolToggle)

	nmap <leader>gd :Gdiff <CR>
	nmap <leader>gc :BCommits <CR>

"" Save File
	nmap <a-s> :w<CR>
	imap <a-s> <Esc>:w<CR>

	map <C-a> <esc>ggVG
	nmap <leader>c :close<CR>
	noremap <C-m> z


"" Vim editor
	" word -> 'word' 
	nnoremap <leader>" ciw""<Esc>P
	nnoremap <leader>' ciw''<Esc>P

	" 'word' -> word 
	nnoremap <Leader>d' diW"=substitute(@@,"'\\\|\"","","g")<CR>P

	" duplicate line
	nnoremap <A-d> YP

	" tab
	nnoremap <A-T> :tabe <CR>
	nnoremap <A-v> :vsp <CR>
	nnoremap <A-h> :sp <CR>
	

	nnoremap <leader>,so :source ~/dotfiles/nvim/.vimrc <CR>

	nnoremap <leader>tmap :e ~/dotfiles/nvim/.map.vim <CR>
	nnoremap <leader>hmap :vsp ~/dotfiles/nvim/.map.vim <CR>
	nnoremap <leader>vmap :split ~/dotfiles/nvim/.map.vim <CR>

	nnoremap <leader>tplug :e ~/dotfiles/nvim/.plug.vim <CR>
	nnoremap <leader>hplug :vsp ~/dotfiles/nvim/.plug.vim <CR>
	nnoremap <leader>vplug :split ~/dotfiles/nvim/.plug.vim <CR>

	nnoremap <leader>tset :e ~/dotfiles/nvim/.set.vim <CR>
	nnoremap <leader>hset :vsp ~/dotfiles/nvim/.set.vim <CR>
	nnoremap <leader>vset :split ~/dotfiles/nvim/.set.vim <CR>

	nnoremap <leader>tlet :e ~/dotfiles/nvim/.let.vim <CR>
	nnoremap <leader>hlet :vsp ~/dotfiles/nvim/.let.vim <CR>
	nnoremap <leader>vlet :split ~/dotfiles/nvim/.let.vim <CR>

	nnoremap <leader>tvim :e ~/dotfiles/nvim/.vimrc <CR>
	nnoremap <leader>hvim :vsp ~/dotfiles/nvim/.vimrc <CR>
	nnoremap <leader>vvim :split ~/dotfiles/nvim/.vimrc <CR>

	" nnoremap <leader>,s :Startify <CR>

	nnoremap za zR
	nnoremap zA zM

	map <A-Tab> <C-Y>,

	nnoremap gR gD:%s/<C-R>///gc<left><left><left>

	" Find files using Telescope command-line sugar.
	" nnoremap <leader>ff <cmd>Telescope find_files<cr>
	" nnoremap <leader>fg <cmd>Telescope live_grep<cr>
	" nnoremap <leader>fb <cmd>Telescope buffers<cr>
	" nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"" Delete command
	xnoremap <leader>d "_d
	nnoremap <leader>d "_d
	xnoremap <leader>p "_dP

"" Hop
	nnoremap f :HopLineStart <CR>
	nnoremap F :HopWord <CR>

""  RG command
	nnoremap <C-g> :Rg<CR>
	command! -bang -nargs=* Rg
				\ call fzf#vim#grep(
				\   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
				\   fzf#vim#with_preview(), <bang>0)

	if has('macunix')
		" pbcopy for OSX copy/paste
		vmap <C-x> :!pbcopy<CR>
		vmap <C-c> :w !pbcopy<CR><CR>
	endif

"" Set working directory
	nnoremap <leader>/ :cd %:p:h<CR>

"" Folding
	map <A-.> zc
	map <A->> zv

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
