let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
"let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_regexp_search          = 0
let g:ctrlp_match_window_reversed  = 0
let g:ctrlp_working_path_mode = 0

"let g:ctrlp_working_path_mode = 'c'

let g:ctrlp_max_height             = 50
let g:ctrlp_open_multiple_files    = 'trv'
set tags+=.git/tags

"" ctrl-p config
"let g:ctrlp_map = '<c-t>'
"silent! nnoremap <unique> <silent> <leader>b :CtrlPMRUFiles<cr>
