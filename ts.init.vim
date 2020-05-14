syntax on
set noerrorbells
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
set noshowmode
    
" Tabs
set expandtab
set shiftwidth=4
set softtabstop=4
set smartindent

let mapleader = " "
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'
Plug 'StanAngeloff/php.vim'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'

call plug#end()

" Theme
set termguicolors
colorscheme onedark

" NerdTree https://github.com/preservim/nerdtree
nmap <A-q> :NERDTreeToggle<CR>
function! IsNERDTreeOpen()        
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" CtrlP http://ctrlpvim.github.io/ctrlp.vim
set runtimepath^=~/.config/nvim/bundle/ctrlp.vim
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_use_caching = 0

" Coc https://github.com/neoclide/coc.nvim/

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for format selected region

xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Prettier format file on save
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

let g:lightline = { 'colorscheme': 'onedark' }
