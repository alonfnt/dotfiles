" Plugins for VIM
"
" Please: Plugins should be small and should target one action -- otherwise
" this becomes a mess to troubleshoot.

" Automatic installation of Plugin Manager
if empty('~/.vim/autoload/plug.vim')
  silent execute '!curl -fLo '~/.vim/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
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

" Increase size easily on gVim
Plug 'alonfnt/gvim-zoom'

" Colorscheme for gVim
Plug 'alonfnt/vim-minimal'

" Handy formatter
Plug 'psf/black'

" The beast... To be removed one day hopefully
" In order to install node, use the recommended command:
" curl -sL install-node.vercel.app/lts | bash
" with root
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Tag manager
Plug 'ludovicchabant/vim-gutentags'

source ~/.vim/coc.vim

call plug#end()

" VimTex settings
let g:vimtex_quickfix_mode=0
let g:vimtex_compiler_latexmk = {'options' : ['-pdf','-shell-escape','-verbose','-file-line-error','-synctex=1','-interaction=nonstopmode',]}
set conceallevel=1
let g:tex_conceal='abdmg'
hi Conceal ctermbg=none
let g:UltiSnipsExpandTrigger = "<nop>"

" Python-syntax settings
let g:python_highlight_all = 1

" Add an indicator of when tags are being generated
set statusline=%f\ %h%w%m%r\ %=%(%l,%c%V\ %=\ %P%)
set statusline+=%{gutentags#statusline()}
