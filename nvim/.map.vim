let mapleader = ","
nnoremap <leader>i :source $HOME/.config/nvim/init.vim \| PlugInstall<CR>

"" Floaterm
	" nnoremap <silent> <leader><UP>		:FloatermToggle<CR>
	" tnoremap <silent> <leader><UP>		<C-\><C-n>:FloatermToggle<CR>
	" nnoremap <silent> <leader><DOWN>	:FloatermNew<CR>
	" tnoremap <silent> <leader><DOWN>	<C-\><C-n>:FloatermNew<CR>
	" nnoremap <silent> <leader><LEFT>	:FloatermPrev<CR>
	" tnoremap <silent> <leader><LEFT>	<C-\><C-n>:FloatermPrev<CR>
	" nnoremap <silent> <leader><RIGHT>	:FloatermNext<CR>
	" tnoremap <silent> <leader><RIGHT>	<C-\><C-n>:FloatermNext<CR>

"" Buffers
	nnoremap <silent> <leader>;			:Buffers<CR>
	tmap <leader>;						:Buffers<CR>
	nnoremap <silent> <A-/>				:BLines<CR>
	nnoremap <silent> <A-f>				:Files<CR>
	nmap <leader>c						:Bclose<CR>
	tmap <leader>c						exit<CR>
	noremap <leader>q					:q<CR>
	nnoremap <leader>Q					:qa!<CR>
	nnoremap <leader>e					:bn<CR>
	nnoremap <leader>q					:bp<CR>

"" Laravel keymap
	nnoremap <leader>pas				:Start <CR>
	nnoremap <leader>pc					:Artisan make:controller 
	nnoremap <leader>pcom				:Artisan make:component 
	nnoremap <leader>tenv				:Eenv <CR>

"" Flutter keymap"
	xmap <leader>a						<Plug>(coc-codeaction-selected) <bar> h
	nmap <leader>,a						<Plug>(coc-range-select) 
	nmap <leader>a						<Plug>(coc-codeaction-selected) <bar> h
	nmap <leader>4						:FlutterSplit <CR>
	
	" Coc
	nmap <silent> gd					<Plug>(coc-definition)
	nmap <silent> gy					<Plug>(coc-type-definition)
	nmap <silent> gi					<Plug>(coc-implementation)
	nmap <silent> gr					<Plug>(coc-references)

	" Symbol renaming.
	nmap <leader>rn						<Plug>(coc-rename)

	" Use K to show documentation in preview window
	nnoremap <silent> <leader><CR>		:call <SID>show_documentation()<CR>
	function! s:show_documentation()
	  if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	  elseif (coc#rpc#ready())
		call CocActionAsync('doHover')
	  else
		execute '!' . &keywordprg . " " . expand('<cword>')
	  endif
	endfunction

	" imap <Tab> <Plug>(coc-snippets-expand)

"" Auto close
	inoremap " ""<left>
	inoremap ' ''<left>
	inoremap ( ()<left>
	inoremap [ []<left>
	inoremap { {}<left>
	inoremap < <><left>
	inoremap {<CR> {<CR>}<ESC>O
	inoremap {;<CR> {<CR>};<ESC>O

"" Switching windows
	noremap <leader>j					<C-w>j
	noremap <leader>k					<C-w>k
	noremap <leader><Tab>				<C-w>l
	noremap <leader><S-Tab>				<C-w>h

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

"" Scroll 
	map K <C-D>
	map J <C-U>
	map <A-L> 5zl
	map <A-H> 5zh

"" Nerdtree toggle
	nnoremap <silent><A-b>				:NERDTreeToggle<CR>
	nnoremap <silent><esc>				:noh<cr><esc>

"" Copy paste
	noremap YY "+y<CR>
	noremap XX "+x<CR>

	" redo
	noremap <a-u> <c-R>

"" Save File
	nmap <a-s> :w<CR>
	imap <a-s> <Esc>:w<CR>


	map <C-a> <esc>ggVG
	nmap <leader>w :close<CR>
	noremap <C-m> z


"" Vim editor
	nnoremap <leader>" ciw""<Esc>P
	nnoremap <leader>' ciw''<Esc>P
	nnoremap <Leader>d' daW"=substitute(@@,"'\\\|\"","","g")<CR>P

	nnoremap <A-d> YP
	nnoremap <leader>t :tabe <CR>
	nnoremap <leader>tv :vsp <CR>

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

	nnoremap <leader>,s :Startify <CR>

	nnoremap za zR
	nnoremap zA zM

	map <A-Tab> <C-Y>,

	" Find files using Telescope command-line sugar.
	" nnoremap <leader>ff <cmd>Telescope find_files<cr>
	" nnoremap <leader>fg <cmd>Telescope live_grep<cr>
	" nnoremap <leader>fb <cmd>Telescope buffers<cr>
	" nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"" Delete command
	xnoremap <leader>d "_d
	nnoremap <leader>d "_d
	xnoremap <leader>p "_dP

"" RG command
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

