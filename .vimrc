"VIM CONFIGURATION FILE"
"Show line Numbers"
set number
syntax on
set encoding=utf-8
set number relativenumber


"enable mouse support"
set mouse=a

"enable smartcase search sensitivity"
set ignorecase
set smartcase

"Plugins Are Here"

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'preservim/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'valloric/youcompleteme'
Plug 'junegunn/fzf' 
Plug 'joom/vim-commentary' "Commenting using gcc and gc for block code"
call plug#end()

"Vim-Latex configuration"
let g:vimtex_view_method = 'zathura'
let g:livepreview_previewer = 'zathura'

"Keybindings--------------------------------------
let mapleader = ","
let maplocalleader = ";"
inoremap jk <esc>
nnoremap <leader>q :q!<cr>
nnoremap <leader>sv :source .vimrc<cr>
nnoremap <leader>w :w<cr>
nnoremap <C-n> :NERDTreeToggle<cr>
nnoremap <leader>wq :wq<cr>


" Map the F5 key to run a Python script inside Vim.
" I map F5 to a chain of commands here.
" :w saves the file.
" <CR> (carriage return) is like pressing the enter key.
" !clear runs the external clear screen command.
" !python3 % executes the current file with Python.
nnoremap <f5> :w <CR>:!clear <CR>:!python3 % <CR>

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

"Set for auto correct"
set spell spelllang=en_us
hi clear SpellBad
hi SpellBad cterm=underline 
"inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
