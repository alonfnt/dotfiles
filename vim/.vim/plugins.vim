" Plugins for VIM
"
" Automatic installation of Plugin Manager
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins List
call plug#begin('~/.vim/bundle')
Plug 'preservim/nerdtree'
Plug 'ap/vim-css-color' 
Plug 'tpope/vim-eunuch' 
Plug 'junegunn/goyo.vim' 
Plug 'manasthakur/vim-commentor'
Plug 'christoomey/vim-conflicted' 
Plug 'tpope/vim-fugitive' 
Plug 'airblade/vim-gitgutter' 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'lervag/vimtex'
Plug 'sirver/ultisnips'
Plug 'vim-python/python-syntax'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'vim-scripts/a.vim' " Switch between .h and .c
Plug 'tibabit/vim-templates' 
Plug 'vimwiki/vimwiki'
Plug 'alonfnt/gvim-zoom'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'psf/black'
Plug 'cormacrelf/vim-colors-github'
Plug 'ayu-theme/ayu-vim'
Plug 'lifepillar/vim-solarized8'
call plug#end()

" Plugins Configurations
source ~/.vim/coc.vim
nnoremap <silent> <leader>e :NERDTreeToggle<cr>
nnoremap <silent> <leader>f :FZF<cr>
nnoremap <silent> <leader>F :FZF ~<cr>

let g:vimtex_quickfix_mode=0
let g:vimtex_compiler_latexmk = {'options' : ['-pdf','-shell-escape','-verbose','-file-line-error','-synctex=1','-interaction=nonstopmode',]}
set conceallevel=1
let g:tex_conceal='abdmg'
hi Conceal ctermbg=none
let g:UltiSnipsExpandTrigger = "<nop>"

let g:python_highlight_all = 1

let g:tmpl_author_email = 'aalonso@protonmail.com'
let g:tmpl_author_name = 'Albert Alonso'
