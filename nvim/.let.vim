let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline_powerline_fonts = 1
let g:lsc_auto_map = v:true
" let g:material_terminal_italics = 1
" let g:material_theme_style = 'ocean'

let g:user_emmet_install_global = 0
let g:smoothie_experimental_mappings = v:true

let g:user_emmet_settings = {
\  'variables': {'lang': 'ja'},
\  'html': {
\    'default_attributes': {
\      'option': {'value': v:null},
\      'textarea': {'id': v:null, 'name': v:null, 'cols': 10, 'rows': 10},
\    },
\    'snippets': {
\      'html:5': "<!DOCTYPE html>\n"
\              ."<html lang=\"${lang}\">\n"
\              ."<head>\n"
\              ."\t<meta charset=\"${charset}\">\n"
\              ."\t<title></title>\n"
\              ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
\              ."</head>\n"
\              ."<body>\n\t${child}|\n</body>\n"
\              ."</html>",
\    },
\  },
\}



" Flutter setting
let g:dart_format_on_save = 1
let g:UltiSnipsExpandTrigger = '<Nop>'
let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'

let g:NERDTreeGitStatusWithFlags = 1
let NERDTreeShowHidden=1
let g:dartfmt_options = ['--fix', '--line-length 120']


" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

"coc config
let g:coc_global_extensions = [
  \ 'coc-flutter',
  \ 'coc-snippets',
  \ 'coc-yaml',
  \ ]

" Vim Vue 
let g:vim_vue_plugin_config = { 
      \'syntax': {
      \   'template': ['html'],
      \   'script': ['javascript', 'typescript'],
      \   'style': ['css', 'scss', 'sass', 'less'],
      \   'i18n': ['json', 'yaml'],
      \   'route': 'json',
      \},
      \'full_syntax': ['json'],
      \'initial_indent': ['i18n', 'i18n.json', 'yaml'],
      \'attribute': 1,
      \'keyword': 1,
      \'foldexpr': 1,
      \'debug': 0,
      \}

" Example
autocmd FileType vue inoremap <buffer><expr> : InsertColon()

function! InsertColon()
  let tag = GetVueTag()
  return tag == 'template' ? ':' : ': '
endfunction

function! OnChangeVueSyntax(syntax)
  echom 'Syntax is '.a:syntax
  if a:syntax == 'html'
    setlocal commentstring=<!--%s-->
    setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
  elseif a:syntax =~ 'css'
    setlocal comments=s1:/*,mb:*,ex:*/ commentstring&
  else
    setlocal commentstring=//%s
    setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
  endif
endfunction

