call plug#begin('~/.vim/plugged')

"Fugitive Vim Github Wrapper
Plug 'tpope/vim-fugitive'

" Lightline - Configurable statusline
 Plug 'itchyny/lightline.vim'

" Eunuch - Add UNIX shell commands to Vim
Plug 'tpope/vim-eunuch'

" NERDTree - File tree view
Plug 'scrooloose/nerdtree'

" Editor Config
Plug 'editorconfig/editorconfig-vim'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins Configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" NerdTree
map <C-o> :NERDTreeToggle<CR>
