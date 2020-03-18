autocmd!
set nocompatible
let mapleader = "\<Space>"
autocmd  BufEnter * silent! lcd %:p:h

" ************ PLUGINS ************
call plug#begin('~/.vim/plugged')
" insert plugins below [use :PlugInstall]
Plug 'tmhedberg/SimpylFold'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/indentpython.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'lervag/vimtex'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'jnurmine/Zenburn'
Plug 'altercation/vim-colors-solarized'
Plug 'kien/ctrlp.vim'
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plug 'tpope/vim-fugitive'
call plug#end()
" ************ PLUGINS ************


" ************ PLUGIN SETTINGS ************
let g:SimpylFold_docstring_preview=1
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:ycm_auto_trigger=0
let g:ycm_autoclose_preview_window_after_completeion=1
" required for powerline
set laststatus=2
" keymap for nerdtree
nnoremap <C-n> :NERDTreeToggle<CR>
let NERDTreeWinPos='right'
let NERDTreeChDirMode='2'
" Syntastic error messages
let g:syntastic_quiet_messages = {
    \ "regex": 
        \ ['Unused variable',
            \ 'conform to snake_case', 
            \ 'conform to UPPER_CASE', 
            \ 'too many local variables',
            \ 'Redefining built-in',
            \ 'wildcard import'] }
" ************ PLUGIN SETTINGS ************


" ************ THEME ************
set background=dark
colorscheme zenburn
" ************ THEME  ************


" ************ VIEW ************
" show line number with relative numbering
set number
set relativenumber
" set code folding
set so=999
set foldenable
set foldmethod=indent
set foldlevel=10
" highlight current line
set cursorline
" show matching brackets/parentheses
set showmatch
" search settings
set incsearch " incremental search
set hlsearch " highlight all search matches
set smartcase " case-sensitive search on caps
set ignorecase " ignore case in search
" share system clipboard
set clipboard=unnamed
" natural split
set splitbelow splitright
" redraw
set lazyredraw " minimize redraw during macros
set ttyfast " use fast terminal
set ttyscroll=0 "redraw instead of scrolling
set title
" ************ VIEW ************


" ************ FORMATTING ************
" set code formatting to Python
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix
set colorcolumn=80
" ************ FORMATTING ************


" ************ REMAPS ************
" Escape with jj
inoremap jj <Esc>
vnoremap jj <Esc>
" save from insert mode
inoremap :wa <Esc>:wa
" reload .vimrc 
nnoremap <leader>rv :so $MYVIMRC<CR>
" fold code
nnoremap <leader>f za
" split navigation
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h
nnoremap <leader>/ :nohlsearch<CR>:let @/=""<CR>
nnoremap <leader>t :vertical terminal<CR>
" delete lines in insert mode
inoremap <leader>dd <Esc>ddi
" ************ REMAPS ************


" ************ PYTHON ************
" Syntax/Highlighting
let python_highlight_all=1
syntax on
" Whitespace and encoding
:highlight BadWhitespace ctermbg=red guibg=red
au BufNewFile,BufRead *.py match BadWhitespace /\s\+$/
au BufNewFile,BufRead *.py set encoding=utf-8
" Skeleton py file
autocmd BufNewFile *.py 0r /home/kenny/.vim/templates/skeleton.py
" ************ PYTHON ************
