syntax on
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set nowritebackup
set incsearch
set hidden
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes
set smarttab
set expandtab
set relativenumber
set cursorline
set showmatch

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'

call plug#end()

" GruvBox Theme https://github.com/morhetz/gruvbox
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox
set background=dark

