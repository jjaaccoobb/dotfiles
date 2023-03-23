set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	" Track the engine.
	Plugin 'SirVer/ultisnips'
	Plugin 'neomake/neomake'
	Plugin 'mhinz/vim-signify'
	Plugin 'phpactor/phpactor'
	" Snippets are separated from the engine. Add this if you want them:
	Plugin 'honza/vim-snippets'
	Plugin 'itchyny/lightline.vim'
	Plugin 'tpope/vim-fugitive'
	Plugin 'mhinz/vim-startify'
call vundle#end()            " required
autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()
" When writing a buffer (no delay).
" Full config: when writing or reading a buffer, and on changes in insert and
" normal mode (after 500ms; no delay when writing).
call neomake#configure#automake('nrwi', 500)
syntax enable
filetype plugin indent on
let mapleader=","
" Don't put comments on right side of maps! They get interpreted
inoremap jj <Esc>
noremap : ;
noremap ; :
" Clear search highlight until next search.
nnoremap <silent> <CR> :noh<CR><CR>:<backspace>
" Navigate command line like bash
cnoremap <C-A> <Home>
cnoremap <C-E> <End>

" Surround the visual selection in parenthesis/brackets/etc
vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a`<esc>`<i`<esc>

" Quickly insert parenthesis/brackets/etc
inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 {<esc>o}<esc>O
inoremap $q ''<esc>i
inoremap $e ""<esc>i
inoremap $t <><esc>i

" DIY autoclosing
"inoremap (; ();<left><left>
"inoremap [; [];<left><left>
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap {<cr> {<cr>}<esc>O
"inoremap (<cr> (<cr>)<esc>O
"inoremap [<cr> [<cr>]<esc>O
"inoremap " ""<left>
"inoremap ' ''<left>
"inoremap ` ``<left>
"inoremap ``` ```<cr>```<esc>O

"set expandtab
set autoindent
set backspace=indent,eol,start
set complete-=i " Don't complete included files
set confirm
set cursorline
set cursorlineopt=number
set encoding=utf8
set ffs=unix,dos,mac
set history=1000
set hlsearch
set ignorecase
set incsearch
set laststatus=2 " Always display the status line, even if only one window is displayed
set linebreak
set list
set listchars=tab:>\ ,trail:•,extends:>,precedes:<,nbsp:+
set mouse=a " Enable use of the mouse for all modes
set nomodeline " Don't care about modelines
set noshowmode " Hide '-- INSERT --' when using lightline.vim
set number
set report=0 " Show all changes
set ruler
set scrolloff=7
set shiftround "  When shifting lines, round the indentation to the nearest multiple of “shiftwidth.”
set shiftwidth=4 " How many columns indented when using reindent operations (>> or <<)
set showbreak=↪
set showcmd " Show partial commands in the last line of the screen
set showmatch
set smartcase
set smartindent
set smarttab
set softtabstop=4
set tabstop=4 " Linux kernel code expects each tab to be eight columns wide.
set title
set ttimeout
set ttimeoutlen=100
set visualbell
set wildmenu
set wildmode=longest:list,full
set wrap
" Dark gray bg, light gray numbers, yellow bold current line
"highlight CursorLineNr ctermbg=235 ctermfg=3 cterm=bold
"highlight LineNr ctermfg=8 ctermbg=235

" open files in tabs (e.g. `vim file1 file2 file3`) - ala `vim -p file1 file2`
au VimEnter * if !&diff | tab all | tabfirst | endif
" @todo find new key since , is <leader>
" nmap , $p

set showtabline=2
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark
" how to delete spaces backward till first non-space char?
"	e.g. `this is a line         ` imagine cursor at $, del back til `line`
" https://superuser.com/questions/121341/how-can-i-paste-something-at-the-end-of-the-line-in-vim
" next tab: g t
" prev tab: g T
" nth  tab: nnn g t
" keycombo: dit (deletes inner tag; e.g. the img tag would be gone here, when
" your cursor is in the a tag <a href=""><img /></a>

" https://stackoverflow.com/questions/53664/how-to-effectively-work-with-multiple-files-in-vim
" https://stackoverflow.com/questions/1676632/whats-a-quick-way-to-comment-uncomment-lines-in-vim
" https://stackoverflow.com/questions/3997078/how-to-paste-yanked-text-into-the-vim-command-line
" https://vi.stackexchange.com/questions/1922/how-to-replace-only-within-visual-selection
" https://stackoverflow.com/questions/594448/how-can-i-add-a-string-to-the-end-of-each-line-in-vim
" https://stackoverflow.com/questions/1373841/vim-deleting-backward-tricks
" https://vi.stackexchange.com/questions/495/how-to-replace-tabs-with-spaces

" see :help motion.txt
" see :help WORD
:set autowrite
" set the runtime path to include Vundle and initialize
" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
