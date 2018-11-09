autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
colorscheme murphy
filetype plugin indent on
imap <F2> <C-O>:set invpaste paste?<CR>
inoremap jj <Esc>
let g:lightline = {'colorscheme': 'wombat'}
let mapleader=","
map <f6> :w <CR>:!bash % <CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <F2> :set invpaste paste?<CR>
nnoremap <leader>s :source /home/jacob/.vimrc<cr>|
noremap : ;
noremap ; :
set autochdir " change to current file pwd
set autoindent
set backspace=indent,eol,start
set encoding=utf-8
set history=1000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set lazyredraw
set linebreak
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.
set mouse=a
set nobackup
set nowrap
set number
set pastetoggle=<F2>
set report=0
set ruler
set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/lightline.vim
set runtimepath^=~/.vim/bundle/nerdtree
set runtimepath^=~/.vim/bundle/listtoggle.vim
set shiftround
set shiftwidth=2
set showcmd
set showmatch
set showmode
set smartcase
set smartindent
set smarttab
set softtabstop=2
set switchbuf=useopen
set textwidth=100
set ttyfast
set undolevels=9999
set visualbell
set wildmenu
set wildmode=list:longest

syntax on

highlight LineNr ctermfg=grey
execute pathogen#infect()
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_php_checkers = ['php', 'phpmd']
autocmd VimEnter * redraw!
" https://stackoverflow.com/questions/21618614/vim-shows-garbage-characters
set t_RV=
" when running at every change you may want to disable quickfix
"let g:prettier#quickfix_enabled = 0

"let g:prettier#autoformat = 0
"autocmd BufWritePre,TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" https://vi.stackexchange.com/questions/201/make-panes-resize-when-host-window-is-resized
:autocmd VimResized * wincmd =
