runtime! debian.vim

set nocompatible              " be iMproved, required
filetype off                  " required


"------------Sets---------------
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
set hidden
set termguicolors
set nocp
filetype plugin on
set relativenumber number
set completeopt-=preview
set shiftwidth=4
set rtp+=~/.vim/bundle/Vundle.vim
set autoindent

"----------/Sets---------------

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" -------Plugins----------
Plugin 'ycm-core/YouCompleteMe'
Plugin 'phanviet/vim-monokai-pro'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-vinegar'
Plugin 'vim-airline/vim-airline-themes'
" -------/Plugins---------


call vundle#end()            " required
filetype plugin indent on    " required

colorscheme monokai_pro
let g:airline_theme='powerlineish'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

if has("syntax")
  syntax on
endif
