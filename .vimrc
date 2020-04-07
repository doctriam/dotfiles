autocmd!
" Remove all autocmmands for current group
set nocompatible  "Disable vi compatibility mode
let mapleader = "\<Space>"  "Set modkey to spacebar
autocmd  BufEnter * silent! lcd %:p:h  "Set working directory based on buffer
  " Required for vim fuzzy finder
syntax enable  "Enable syntax highlighting
filetype plugin on "Enable filetype detection and plugin capabilities
set path +=**  "Set search subdirectories
set wildmenu  "Display all matching searches on Tab Tab

" *********** PLUGINS ************
call plug#begin('~/.vim/plugged')
" insert plugins below [use :PlugInstall]
    " Tools"
Plug 'scrooloose/nerdtree'  "File Directory
Plug 'vimwiki/vimwiki'  "Personal Wiki
Plug 'lervag/vimtex'  "Latex Plugin
    " Code Enhancements"
Plug 'Valloric/YouCompleteMe'  "Code Autocomplete
Plug 'vim-syntastic/syntastic'  "Syntax verification
Plug 'airblade/vim-gitgutter'  "Git In-File Diff Tool
Plug 'tmhedberg/SimpylFold'  "Python Fold
Plug 'vim-scripts/indentpython.vim'  "Python Indent
Plug 'nvie/vim-flake8'  "Python Style Checker
Plug 'martinda/Jenkinsfile-vim-syntax'  "Jenkins Syntax
    " Superficial
Plug 'ap/vim-css-color'  "CSS Color Display
Plug 'jnurmine/Zenburn'  "vim theme
Plug 'junegunn/seoul256.vim'  "lightline theme
Plug 'itchyny/lightline.vim'  "Stylized Info
Plug 'chrisbra/Colorizer' "Show HTML color
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
" lightline
set laststatus=2
set noshowmode
let g:lightline = { 
    \ 'colorscheme': 'seoul256',
    \ 'active': { 
    \ 'left': [ 
        \ [ 'mode', 'paste' ] , 
        \ [ 'readonly', 'absolutepath', 'modified' ],
    \ ],
    \ }
    \ }
" keymap for nerdtree
nnoremap <C-n> :NERDTreeToggle<CR>
let NERDTreeWinPos='left'
let NERDTreeChDirMode='2'
" Syntastic error messages; hide errors featuring these strings
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
set clipboard=xfce4-clipman
" natural split; new split to right or bottom
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
" reload .vimrc 
nnoremap <leader>rv :so $MYVIMRC<CR>
" fold code
nnoremap <leader>f za
" split navigation
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h
" clear search results
nnoremap <leader>/ :nohlsearch<CR>:let @/=""<CR>
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
