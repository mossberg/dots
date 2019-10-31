source ~/.vimrc.local

"vimplug setup
call plug#begin('~/.vim/myplugins')

" Vim plugins
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'ervandew/supertab'

"Bundle 'scrooloose/syntastic'
"Bundle 'tpope/vim-dispatch'
"Bundle 'garbas/vim-snipmate'
"Bundle 'honza/vim-snippets'
"Bundle 'majutsushi/tagbar'
"Bundle 'dag/vim-fish'
"Bundle 'kien/ctrlp.vim'
"Bundle 'rust-lang/rust.vim'
"Bundle 'rking/ag.vim'

call plug#end()

""""""""""""""""""""

let mapleader = "\<Space>"
" General
filetype off
filetype plugin indent on
syntax enable
set backspace=indent,eol,start
set shell=/bin/bash     " required when using fish
set nocompatible
set number
set splitbelow
set splitright
set ruler
set foldmethod=indent
set foldlevel=99
set nowrap
set colorcolumn=80
highlight ColorColumn ctermbg=7 " light grey color column
set scrolloff=9999      " cursor always in middle
set noswapfile
set tabstop=4 shiftwidth=4 softtabstop=4 autoindent expandtab
set hlsearch incsearch ignorecase smartcase
set mouse=a
set tags=tags;/
set cursorline
" set textwidth=80
set laststatus=2

set t_Co=256 " vim-airline stuff
let g:airline_theme="solarized"
hi Search cterm=NONE ctermfg=white ctermbg=blue
let NERDTreeQuitOnOpen=1


" highlights excess whitespace
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$/

" thanks @dbotsford!
" toggles relative line numbers
function! NumberToggle()
  if(&relativenumber == 1)
    "set number
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard']

nnoremap <leader>n :call NumberToggle()<cr>

" jump 5 lines with C-jk
noremap <C-h> 5j
noremap <C-u> 5k

" save/quit
map <C-s> <esc>:w<cr>
imap <C-s> <esc>:w<cr>
nmap <C-q> <esc>:q<cr>

" easy escape, braces
inoremap jk <ESC>
inoremap ;l <CR>
inoremap kk -
inoremap jj _
inoremap []\ {<CR>}<Esc>ko

" tagbar
 map <leader>x :TagbarOpenAutoClose<cr>
 map <leader>X :TagbarToggle<cr>
map <tab> :NERDTreeToggle<cr>

" de-highlight
map <leader>\ :noh<cr>

" quick bash
map <leader>j :sh<cr>

" quick hl
nmap <leader>8 *N

" quick ag
" nmap <leader>a :Ag<cr>

" paste
nnoremap <leader>p :set paste<cr>i
nnoremap <leader>P :set nopaste<cr>

" toggle scrolloff
function! ScrollOffToggle()
  if(&scrolloff == 9999)
    set scrolloff=5
  else
    set scrolloff=9999
  endif
endfunc

nnoremap <leader>s :call ScrollOffToggle()<cr>

"wrap
function! WrapToggle()
  if(&wrap == 1)
    set nowrap
  else
    set wrap
  endif
endfunc
nnoremap <leader>w :call WrapToggle()<cr>

" easy tab movement (yes, this overrides the emacs C-n above
nnoremap <C-n> :tabprevious<cr>
nnoremap <C-m> :tabnext<cr>
