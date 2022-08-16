let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#formatter = 'jsformatter'
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline_powerline_fonts = 1
let g:lsc_auto_map = v:true

let g:user_emmet_install_global = 0
" let g:smoothie_experimental_mappings = v:true

" status line
let g:tmuxline_theme = 'airline'
" let g:airline_theme = 'luna'
let g:airline_theme='oceanicnext'
" let g:airline_theme='base16color'
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1

let g:indentLine_enabled = 1
let g:vim_json_conceal=1
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

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

let g:prettier#autoformat = 1
let g:prettier#exec_cmd_async = 1
let g:prettier#autoformat_config_present = 1
let g:prettier#autoformat_require_pragma = 0

let g:vim_jsx_pretty_colorful_config = 1 " default 0

"coc config
let g:coc_global_extensions = [
  \ 'coc-flutter',
  \ 'coc-snippets',
  \ 'coc-yaml',
  \ 'coc-json',
  \ 'coc-tsserver',
  \ 'coc-blade',
  \ ]

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

" let g:user_emmet_settings = {
" \  'variables': {'lang': 'ja'},
" \  'html': {
" \    'default_attributes': {
" \      'option': {'value': v:null},
" \      'textarea': {'id': v:null, 'name': v:null, 'cols': 10, 'rows': 10},
" \    },
" \    'snippets': {
" \      'html:5': "<!DOCTYPE html>\n"
" \              ."<html lang=\"${lang}\">\n"
" \              ."<head>\n"
" \              ."\t<meta charset=\"${charset}\">\n"
" \              ."\t<title></title>\n"
" \              ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
" \              ."</head>\n"
" \              ."<body>\n\t${child}|\n</body>\n"
" \              ."</html>",
" \    },
" \  },
" \}

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

" Markdown review

let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']

let g:mergetool_layout = 'mr'
let g:mergetool_prefer_revision = 'local'

" Define some single Blade directives. This variable is used for highlighting only.
let g:blade_custom_directives = ['datetime', 'javascript']

" Define pairs of Blade directives. This variable is used for highlighting and indentation.
let g:blade_custom_directives_pairs = {
      \   'markdown': 'endmarkdown',
      \   'cache': 'endcache',
      \ }
