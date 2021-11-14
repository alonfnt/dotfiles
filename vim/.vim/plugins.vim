"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins for VIM
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Automatic installation of Plugin Manager
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/bundle')

" Directory Browser
Plug 'preservim/nerdtree'
nnoremap <silent> <leader>e :NERDTreeToggle<cr>

" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
source ~/.vim/coc.vim

" Show the color in the file when written HEX
Plug 'ap/vim-css-color' 

" Add UNIX shell commands
Plug 'tpope/vim-eunuch' 

" Distraction free
Plug 'junegunn/goyo.vim' 

" Enhanced GCC comment
Plug 'manasthakur/vim-commentor'

" Use :Conflicted to solve git conflict ions
Plug 'christoomey/vim-conflicted' 

" Incorporates git into the command line.
Plug 'tpope/vim-fugitive' 

" Shows Git changes.
Plug 'airblade/vim-gitgutter' 

" Fuzzy search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
nnoremap <silent> <leader>f :FZF<cr>
nnoremap <silent> <leader>F :FZF ~<cr>

" Latex
Plug 'lervag/vimtex'
let g:vimtex_quickfix_mode=0
let g:vimtex_compiler_latexmk = {'options' : ['-pdf','-shell-escape','-verbose','-file-line-error','-synctex=1','-interaction=nonstopmode',]}

Plug 'KeitaNakamura/tex-conceal.vim'
set conceallevel=1
let g:tex_conceal='abdmg'
hi Conceal ctermbg=none

" Snippets
Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" Python extended syntax support
Plug 'vim-python/python-syntax'
let g:python_highlight_all = 1

" Go Lang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" C/C++
Plug 'vim-scripts/a.vim' " Switch between .h and .c

" Templates - Start documents with a template
Plug 'tibabit/vim-templates' 
let g:tmpl_author_email = 'aalonso@protonmail.com'
let g:tmpl_author_name = 'Albert Alonso'

" Vim Wiki
Plug 'vimwiki/vimwiki'

" GVim Fontsize
Plug 'alonfnt/gvim-zoom'

call plug#end()
