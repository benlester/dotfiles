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

set rtp+=~/.vim/bundle/Vundle.vim " Vundle related

autocmd BufEnter * :syntax sync fromstart

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
Plugin 'styled-components/vim-styled-components'
Plugin 'airblade/vim-gitgutter'
Plugin 'sheerun/vim-polyglot'
Plugin 'godlygeek/tabular'
Plugin 'ap/vim-css-color'
Plugin 'w0rp/ale'
Plugin 'pangloss/vim-javascript'
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'jparise/vim-graphql'
Plugin 'Quramy/tsuquyomi'

call vundle#end()

" spacebar as leader
let mapleader = " "

" ALE off by default - on when needed
let g:ale_enabled = 0
nmap <leader>ss :ALEToggle<CR>
let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace']}

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

" remapping annoying caps mistakes
:command WQ wq
:command Wq wq
:command W w
:command Q q

colorscheme jellybeans
