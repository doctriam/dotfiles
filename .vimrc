set nocompatible

" ************ PLUGINS ************
call plug#begin('~/.vim/bundle/plugged')
" insert plugins below
" Plug '[plugin name]'
Plug 'tmhedberg/SimpylFold'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'vim-scripts/indentpython.vim'
Plug 'Valloric/YouCompleteMe'
call plug#end()
let g:SimpylFold_docstring_preview=1
" *********************************


" ************ VIEW ************
" show line number
set number
" show line numbers relative to current line
set relativenumber
" show matching brackets/parentheses
set showmatch
" set code folding
set foldenable
set foldmethod=indent
set foldlevel=99
" set code formatting
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix
" ******************************


" ************ COMMAND REMAPS ************
let mapleader = "\<Space>"
" reload .vimrc 
nnoremap <leader>rv :so $MYVIMRC<CR>
" fold code
nnoremap <leader>f za
" ****************************************


" ************  INSERT REMAPS ************
" Escape with 'jj' or '`'
inoremap jj <Esc>
inoremap ` <Esc>
" ***************************************



" ************ PYTHON ************
:highlight BadWhitespace ctermbg=red guibg=red
au BufNewFile,BufRead *.py match BadWhitespace /\s\+$/
au BufNewFile,BufRead *.py set encoding=utf-8
autocmd BufNewFile *.py 0r /home/kenny/.vim/templates/skeleton.py
" ******************************
