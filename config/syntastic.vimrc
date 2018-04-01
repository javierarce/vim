let g:syntastic_enable_signs        = 1 " Enable syntastic syntax checking
let g:syntastic_quiet_messages      = {'level': 'warnings'}
"let g:syntastic_enable_highlighting = 0
"let g:syntastic_javascript_jshint_conf = '~/.jshintrc'
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_html_tidy_ignore_errors = [ '<template> is not recognized!' ]
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css
" trying this for vue
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_vue_checkers = ['eslint']
let local_eslint = finddir('node_modules', '.;') . '/.bin/eslint'
if matchstr(local_eslint, "^\/\\w") == ''
  let local_eslint = getcwd() . "/" . local_eslint
endif
if executable(local_eslint)
  let g:syntastic_javascript_eslint_exec = local_eslint
  let g:syntastic_vue_eslint_exec = local_eslint
endif
