" Changes leader key*/
let mapleader = ","

" Reloads vimrc file after saving it
augroup AutoReloadVimRC
  au!
  au BufWritePost $MYVIMRC so $MYVIMRC
augroup END

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""
" Settings                                 "
""""""""""""""""""""""""""""""""""""""""""""
syntax on                                  " Enable syntax highlight
set nocompatible                           " Old-vim Rest In Peace
set rnu                                    " Activates relative line numbers
set ruler                                  " Activates ruler
set encoding=utf-8                         " Set encoding
set clipboard=unnamed                      " Copy/pastes to/from system clipboard
set viminfo+=n~/.vim/viminfo               " viminfo stores the the state of your previous editing session
""""""""""""""""""""""""""""""""""""""""""""
set nowrap                                 " Whitespace stuff
set tabstop=2                              " Whitespace stuff
set shiftwidth=2                           " Whitespace stuff
set softtabstop=2                          " Whitespace stuff
set expandtab                              " Whitespace stuff
set list listchars=tab:\ \ ,trail:·        " Whitespace stuff
""""""""""""""""""""""""""""""""""""""""""""
set hlsearch                               " Search stuff
set incsearch                              " Search stuff
set ignorecase                             " Search stuff
set smartcase                              " Search stuff
""""""""""""""""""""""""""""""""""""""""""""
set wildmode=list:longest,list:full        " Tab completion
""""""""""""""""""""""""""""""""""""""""""""
"set laststatus=1                           " Status bar
"set modelines=5                            " Status bar
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
""""""""""""""""""""""""""""""""""""""""""""
set backspace=indent,eol,start             " allow backspacing over everything in insert mode
""""""""""""""""""""""""""""""""""""""""""""
set modeline                               " Activates modeline support
set modelines=10                           " Checks 10 first or last lines in a file for vim settings overrides
""""""""""""""""""""""""""""""""""""""""""""
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
""""""""""""""""""""""""""""""""""""""""""""
set iskeyword+=-
"set lisp
set wrap                                   " Sets lines wrap
set hidden                                 " Buffers are just hidden when closing files
set ttyfast                                " Fasth terminal connection
set timeout timeoutlen=500 ttimeoutlen=500 " Timeout for keystrokes
set wildignore+=*.o                        " Ignored files paths
set wildignore+=*.obj                      " Ignored files paths
set wildignore+=.git                       " Ignored files paths
set wildignore+=*.rbc                      " Ignored files paths
set wildignore+=*.class                    " Ignored files paths
set wildignore+=.svn                       " Ignored files paths
set wildignore+=vendor/gems/*              " Ignored files paths
set wildignore+=*.jpg                      " Ignored files paths
set wildignore+=*.jpeg                     " Ignored files paths
set wildignore+=*.jpeg*                    " Ignored files paths
set wildignore+=*.png                      " Ignored files paths
set wildignore+=*.gif                      " Ignored files paths
set wildignore+=.dat*                      " Ignored files paths
set wildignore+=tags                       " Ignored files paths
set wildignore+=*.sqlite*                  " Ignored files paths
set wildignore+=*/public/uploads/*         " Ignored files paths
set wildignore+=*/.git/*                   " Ignored files paths
set wildignore+=*/.bundle/*                " Ignored files paths
set wildignore+=*/bin/*                    " Ignored files paths
set wildignore+=*/log/*                    " Ignored files paths
set wildignore+=*/tmp/*                    " Ignored files paths
set wildignore+=*/.sass-cache/*            " Ignored files paths
set wildignore+=*/.jhw-cache/*             " Ignored files paths
set wildignore+=*/node_modules/*           " Ignored files paths
set wildignore+=*/vendor/*                 " Ignored files paths
set wildignore+=*/resources/*              " Ignored files paths
set wildignore+=*/build/*                  " Ignored files paths
set wildignore+=*/_site/*                  " Ignored files paths
""""""""""""""""""""""""""""""""""""""""""""
set nobackup                               " get rid of annoying backup behaviour
set nowritebackup                          " get rid of annoying backup behaviour
set noswapfile                             " get rid of annoying backup behaviour
""""""""""""""""""""""""""""""""""""""""""""
set splitright                             " Vertical splits at right side
set splitbelow                             " Horizontal splits below
""""""""""""""""""""""""""""""""""""""""""""
set gdefault                               " don't need /g after :s or :g
""""""""""""""""""""""""""""""""""""""""""""
set completeopt=longest,menuone            " Improves autocomplete menu
""""""""""""""""""""""""""""""""""""""""""""
"set foldmethod=syntax                     " Folds based on syntax
set foldnestmax=2                          " Sets max folding level
""""""""""""""""""""""""""""""""""""""""""""
set omnifunc=csscomplete#CompleteCSS

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" Vundle bundles
Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-surround'
Bundle "mattn/emmet-vim"
Bundle 'vim-scripts/ZoomWin'
Bundle 'msanders/snipmate.vim'
Bundle 'sjl/gundo.vim'
Bundle 'mileszs/ack.vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-markdown'
Bundle 'wavded/vim-stylus'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'vim-scripts/Rainbow-Parenthsis-Bundle'
Bundle 'airblade/vim-gitgutter'
Bundle 'mmozuras/vim-github-comment'
Bundle "pangloss/vim-javascript"
Bundle "utl.vim"
Bundle "digitaltoad/vim-jade"
Bundle 'groenewege/vim-less'
Bundle 'vim-scripts/matchit.zip'
Bundle 'othree/html5.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'firegoby/SASS-Snippets'

"""""""""""""""""""""""""""""" Plugins config
so ~/.vim/config/colors.vimrc
so ~/.vim/config/ctrlp.vimrc
so ~/.vim/config/vundle.vimrc
so ~/.vim/config/syntastic.vimrc

filetype plugin indent on

" Buffers events
"""""""""""""""""
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru,*.sinew} set ft=ruby
au BufNewFile,BufRead *.json                                                    set filetype=javascript
au BufNewFile,BufRead *.ejs                                                     set filetype=html
au BufNewFile,BufRead *.tpl                                                     set filetype=html.erb
au BufNewFile,BufRead {*.vimrc,*.vim}                                           set filetype=vim
autocmd BufNewFile,BufRead *.scss                                               set ft=scss.css
au BufNewFile,BufRead *.iphone.erb set filetype=html

let g:github_user = "javierarce"
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1  = "inc"
let javaScript_fold       = 1       " JavaScript

let g:ackprg = 'ag --nogroup --nocolor --column'

" ZoomWin configuration
map <leader><leader> :ZoomWin<CR>

" Map ESC to jj and save my pinky
imap jj <ESC>
imap Jj <ESC>
imap JJ <ESC>

" ,a to Ack
nn <leader>a :Ack 

" Rotating among results in an ack search
map an :cn<CR>
"map ap :cp<CR>

" Disable the regular keys to get me on the right track
nn <up> <nop>
nn <down> <nop>
nn <left> <nop>
nn <right> <nop>
ino <up> <nop>
ino <down> <nop>
ino <left> <nop>
ino <right> <nop>

" Splits  ,v to open a new vertical split and switch to it
nn <leader>v <C-w>v<C-w>l
nn <leader>h <C-w>s<C-w>l

" Move between splits
"nn <C-h> <C-w>h
"nn <C-j> <C-w>j
"nn <C-k> <C-w>k
"nn <C-l> <C-w>l
nnoremap <C-J> <C-W>w
nnoremap <C-K> <C-W>W

" Opens /etc/hosts file
nmap <leader>etc :tabedit /etc/hosts<CR>

" Saves as super-user
nmap <leader>sw :w !sudo tee %<CR>

" Gundo toggle
nmap <leader>u :GundoToggle<CR>

" Removes highlighted search terms
" <C-M> == <CR>
noremap <CR> :noh<CR>

" Numbers to move between tabs
map  <leader>0 0gt
map  <leader>1 1gt
map  <leader>2 2gt
map  <leader>3 3gt
map  <leader>4 4gt
map  <leader>5 5gt
map  <leader>6 6gt
map  <leader>7 7gt
map  <leader>8 8gt
map  <leader>9 9gt

" undo stuff
if exists("+undofile")
  " undofile - This allows you to use undos after exiting and restarting
  " This, like swap and backups, uses .vim-undo first, then ~/.vim/undo
  " :help undo-persistence
  " This is only present in 7.3+
  if isdirectory($HOME . '/.vim/undo') == 0
    :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
  endif

  set undodir=./.vim-undo//
  set undodir+=~/.vim/undo//
  set undofile

endif

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

noremap <Leader>i <ESC>T>i{% trans "<ESC>t<a" %}<ESC>

nnoremap <A-j> :m+<CR>==
nnoremap <A-k> :m-2<CR>==
inoremap <A-j> <Esc>:m+<CR>==gi
inoremap <A-k> <Esc>:m-2<CR>==gi
vnoremap <A-j> :m'>+<CR>gv=gv
vnoremap <A-k> :m-2<CR>gv=gv
