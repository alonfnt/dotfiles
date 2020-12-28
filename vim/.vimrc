" General Settings
set nocompatible
set encoding=utf-8 
set path+=** 
set mouse=a
set wildmenu
set wildmode=list:longest,full
set wrap 
set tags+=$HOME/.local/share/tags 
set nofoldenable
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround
set scrolloff=5 
set backspace=indent,eol,start 
set ttyfast
set laststatus=1
set showcmd 
set matchpairs+=<:> 
set number 
set hidden
set splitbelow
set splitright
set autochdir

set hlsearch 
set incsearch 
set ignorecase 
set smartcase

filetype off 
filetype plugin indent on 

" Settings depending on file type
autocmd Filetype tex setlocal nofoldenable " Not folding on LaTEX files

" Plugins
source ~/.vim/plugins.vim 

" Custom Mappings
nnoremap <C-_> :nohlsearch<CR>
nnoremap <C-/> :nohlsearch<CR>
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
