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

" shortcut gcc to comment any line.
Plug 'manasthakur/vim-commentor'

" Git related plugins
Plug 'tpope/vim-fugitive' 
Plug 'airblade/vim-gitgutter' 

" Plugins that make using vim for latex good.
Plug 'lervag/vimtex'
Plug 'sirver/ultisnips'

" Mainly because vim python syntax does not count f-strings
Plug 'vim-python/python-syntax'

" Increase size easily on GVim
Plug 'alonfnt/gvim-zoom'

" Handy formatter
Plug 'psf/black'
call plug#end()

let g:vimtex_quickfix_mode=0
let g:vimtex_compiler_latexmk = {'options' : ['-pdf','-shell-escape','-verbose','-file-line-error','-synctex=1','-interaction=nonstopmode',]}
set conceallevel=1
let g:tex_conceal='abdmg'
hi Conceal ctermbg=none
let g:UltiSnipsExpandTrigger = "<nop>"

let g:python_highlight_all = 1
