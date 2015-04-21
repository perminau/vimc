" ============================================================================
" =========================== GENERAL SETTING ================================
"
set shell=/bin/bash
set t_Co=256           			  " 256 colors
set nocompatible       			  " be iMproved
let mapleader=","			        
filetype off 				          " required!


" ============================================================================
" =============================== PLUGINS ====================================
"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle
" " required!
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'slim-template/vim-slim.git'
Plugin 'rking/ag.vim'
Plugin 'wesQ3/vim-windowswap'
Bundle "tomasr/molokai"

" All plugins must be before this line
call vundle#end()             " required
syntax enable
filetype plugin indent on     " required


" ============================================================================
" =========================== TABS & INDENTATION  ============================
" 
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab


" ============================================================================
" ============================= BASIC SETTINGS  ==============================
"
set number
set numberwidth=1
set title 
set ruler 

set colorcolumn=120

set confirm
set showcmd

set ignorecase                " Default to using case insensitive searches,
set hlsearch                  " Highlight searches by default.
set incsearch                 " Incrementally search while typing a /regex

" hide matches on <leader>space
nnoremap <leader><space> :nohlsearch<cr>

" Resize split
nnoremap <c-w><Left> :vertical resize +3<cr>
nnoremap <c-w><Right> :vertical resize -3<cr>
nnoremap <c-w><Up> :resize +3<cr>
nnoremap <c-w><Down> :resize -3<cr>

" ============================================================================
" =========================== CTRLP SETTINGS =================================
"
let g:ctrlp_show_hidden = 1


" ============================================================================
" ============================ COLOR SCHEME ==================================
"
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1

" Override molokai brackets highlighting rule
hi MatchParen cterm=bold ctermbg=none ctermfg=red

