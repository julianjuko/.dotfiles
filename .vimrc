" show line numbers
set number

" syntax highlighting
syntax on
"
" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" set leader to ,
let mapleader = ','

" two spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Make backspace behave normally
set backspace=indent,eol,start

" ignore node_modules and DS_Store files
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" tree view
map <C-n> :NERDTreeToggle<CR>
 
" runtime path for ctrl-p
set runtimepath^=~/.vim/bundle/ctrlp.vim

" use silver searcher if available for extremely fast fuzzy searching
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" pathogen to install packages
execute pathogen#infect()

" when opening a new tab, immediately show fuzzy finder
nnoremap tt :tabe<CR><bar>:CtrlP<CR>

" tab and backspace to move through tabs quickly
nnoremap <tab> gt
noremap <space><tab> gT

" yank(copy) to and paste from system clipboard (OSX, Windows)
" set clipboard+=unnamedplus

" reduce escape sequence timeout length to 100ms
set ttimeoutlen=100

" move panes with space h/j/k/l
nnoremap <space> <C-w>
nnoremap <space>p :CtrlP<cr>

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $
"

" theme
colors deus

" .swp files are annoying
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

set term=screen-256color
set t_ut=
