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
" default updatetime 4000ms is not good for async update
set updatetime=100
set clipboard=unnamedplu
set tabstop=2
set expandtab
"----------/Sets---------------

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" -------Plugins----------
"Plugin 'sickill/vim-monokai'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-vinegar'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-commentary'
Plugin 'yuttie/comfortable-motion.vim'
Plugin 'preservim/nerdtree'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'mhinz/vim-signify'
Plugin 'mg979/vim-visual-multi'
Plugin 'ryanoasis/vim-devicons'
Plugin 'prettier/vim-prettier'
Plugin 'ap/vim-css-color'
Plugin 'machakann/vim-highlightedyank'
Plugin 'raimondi/delimitmate'
Plugin 'puremourning/vimspector'
Plugin 'tpope/vim-surround'
Plugin 'neoclide/coc.nvim' 
" -------/Plugins---------

call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
colorscheme monokai

let g:airline_theme='powerlineish'
" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"


"----------NERDTree mappings---------
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"---------vim-spector---------------
nnoremap <Leader>dd :call vimspector#Launch()<CR>
nnoremap <Leader>de :call vimspector#Reset()<CR>
nnoremap <Leader>dc :call vimspector#Continue()<CR>

nnoremap <Leader>dt :call vimspector#ToggleBreakpoint()<CR>
nnoremap <Leader>dT :call vimspector#ClearBreakpoints()<CR>

nmap <Leader>dk <Plug>VimspectorRestart
nmap <Leader>dh <Plug>VimspectorStepOut
nmap <Leader>dl <Plug>VimspectorStepInto
nmap <Leader>dj <Plug>VimspectorStepOver

"------------key mappings------------
inoremap {<cr> {<cr>}<c-o>O
inoremap [<cr> [<cr>]<c-o>O
inoremap (<cr> (<cr>)<c-o>O

if has("syntax")
  syntax on
endif
