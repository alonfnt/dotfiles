"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins for VIM - Installation File
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.config/nvim/bundle')
" Utilities--------------------
Plug 'preservim/nerdtree' " Directory browser
Plug 'ap/vim-css-color' " Show the color in the file when written HEX
Plug 'tpope/vim-eunuch' " Add UNIX shell commands
Plug 'junegunn/goyo.vim' " Distraction free
"Plug 'vim-airline/vim-airline' " Cool statusbar
Plug 'rhysd/clever-f.vim' " Find the next ocurrance
Plug 'manasthakur/vim-commentor' " Enhanced gcc comment
"Plug 'christoomey/vim-conflicted' " Use :Confliced to solve git conflictions
"Plug 'tpope/vim-fugitive' " Incorporates git into the command line.
"Plug 'airblade/vim-gitgutter' " Shows Git changes.
" LateX--------------------
"Plug 'lervag/vimtex'
"Plug 'vim-latex/vim-latex'
" Python--------------------
Plug 'vim-python/python-syntax' " Adds support for python3 syntax.
" GoLang--------------------
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" C/C++---------------------
Plug 'vim-scripts/a.vim' " Switch between .h and .c
" Templates-----------------
"Plug 'tibabit/vim-templates' " Starts document with template.
" Autocomplete --
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins Configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable all highlights from python-syntax
let g:python_highlight_all = 1

" Set the placeholder values for the templates
let g:tmpl_author_email = 'aalonso@pm.me'
let g:tmpl_author_name = 'Albert Alonso'

" Set the configuration of coc-vim
source ~/.config/nvim/coc.vim
