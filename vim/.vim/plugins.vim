"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins for VIM - Installation File
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/bundle')
" Utilities
Plug 'preservim/nerdtree' " Directory browser
Plug 'ap/vim-css-color' " Show the color in the file when written HEX
Plug 'tpope/vim-eunuch' " Add UNIX shell commands
Plug 'junegunn/goyo.vim' " Distraction free
Plug 'rhysd/clever-f.vim' " Find the next ocurrance
Plug 'manasthakur/vim-commentor' " Enhanced gcc comment
Plug 'christoomey/vim-conflicted' " Use :Confliced to solve git conflictions
Plug 'tpope/vim-fugitive' " Incorporates git into the command line.
Plug 'airblade/vim-gitgutter' " Shows Git changes.
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" LateX
Plug 'lervag/vimtex'
Plug 'sirver/ultisnips'
Plug 'KeitaNakamura/tex-conceal.vim'
" Python
Plug 'vim-python/python-syntax' " Adds support for python3 syntax.
" GoLang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" C/C++
Plug 'vim-scripts/a.vim' " Switch between .h and .c
" Templates
Plug 'tibabit/vim-templates' " Starts document with template.
" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" VimWiki
Plug 'vimwiki/vimwiki'
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
source ~/.vim/coc.vim

" Fuzzy Finder Shortcuts
nnoremap <silent> <leader>f :FZF<cr>
nnoremap <silent> <leader>F :FZF ~<cr>

" VimTex settings
let g:vimtex_quickfix_mode=0
let g:vimtex_compiler_latexmk = {'options' : ['-pdf','-shell-escape','-verbose','-file-line-error','-synctex=1','-interaction=nonstopmode',]}

" UltiSnips settings
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" Tex Conceal
set conceallevel=1
let g:tex_conceal='abdmg'
hi Conceal ctermbg=none
