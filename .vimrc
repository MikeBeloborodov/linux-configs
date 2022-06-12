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
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'sheerun/vim-polyglot'
" -------/Plugins---------


call vundle#end()            " required
filetype plugin indent on    " required

colorscheme monokai_pro
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

if has("syntax")
  syntax on
endif
