filetype off

call pathogen#helptags()
call pathogen#infect()

filetype plugin indent on    " required

" Create a project filetype for todo.txt ouline files
au BufNewFile,BufRead *.proj set filetype=project

set nocompatible

set modelines=0

" Prefered tabbing
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Some other options to promote sanity?
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber "not sure on this one
set undofile

" A lot of people change the leader here but I'm sure on that
" comma is a common choice but I use it quite a bit

" tame searching?
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault " reverses the meaning of g on the end of regex sub...now default all on line
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr> " clear highlighting after a search
nnoremap <tab> %
vnoremap <tab> %

" Some custom keybindings
" \W clears all trailing white space
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" map ack?
"nnoremap <leader>a :Ack

" Remap something to escape from insert mode
inoremap jj <ESC>

" Still experimenting here
color desert

"hi ColorColumn ctermbg=lightgrey guibg=lightgrey
"let &colorcolumn="80,120"

set number

syntax on

" vim-latex recommended/required settings
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
