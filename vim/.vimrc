set nocompatible
filetype off
set history=500

set number
set relativenumber

" turns off buffer backups
set nobackup
set nowb
set noswapfile

" tab stuff
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

autocmd BufEnter * :syntax sync fromstart

set rtp+=~/.vim/bundle/Vundle.vim " Vundle related

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'bling/vim-airline'
Plugin 'nanotech/jellybeans.vim'
Plugin 'mattn/emmet-vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'airblade/vim-gitgutter'
Plugin 'sheerun/vim-polyglot'
Plugin 'Valloric/MatchTagAlways'
Plugin 'godlygeek/tabular'
Plugin 'w0rp/ale'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ap/vim-css-color'
Plugin 'styled-components/vim-styled-components'
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/tsuquyomi'

call vundle#end()

" spacebar as leader
let mapleader = " "

" ALE off by default - on when needed
let g:ale_enabled = 0
nmap <silent> <leader>ss :ALEToggle<CR>
nmap <silent> <leader>aj :ALENext<cr>
nmap <silent> <leader>ak :ALEPrevious<cr>
let g:ale_fix_on_save = 1

let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'hbs' : 1,
    \}

filetype plugin indent on

" Give a shortcut key to NERD Tree
map <F2> :NERDTreeToggle<CR>

" disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" tab related shortcuts
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

colorscheme jellybeans
