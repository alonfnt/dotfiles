"
" Plugins for VIM
"
" Please: Plugins should be small and should target one action -- otherwise
" this becomes a mess to troubleshoot.

" Automatic installation of Plugin Manager
if empty('$HOME/.vim/autoload/plug.vim')
  silent execute '!curl -fLo '$HOME/.vim/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'manasthakur/vim-commentor' " Comments line with gc.
Plug 'airblade/vim-gitgutter' " Shows git diffs in editor.
Plug 'tpope/vim-fugitive' " Git wrapper inside vim.
Plug 'lervag/vimtex' " LaTex in Vim.
Plug 'sirver/ultisnips' " The ultimate snippet solution for Vim.
Plug 'vim-python/python-syntax' " Python syntax highlighting for Vim.
Plug 'alonfnt/gvim-zoom', {'branch': 'devel'} " Increase font in GVim.
Plug 'ludovicchabant/vim-gutentags' " Tag manager.
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Big boy LSP.
Plug 'junegunn/fzf', {'do': { -> fzf#install() } } " Fuzzy search.
Plug 'junegunn/fzf.vim' " Fuzzy search VIM integration.
Plug 'dikiaap/minimalist' " All around nice colorscheme
call plug#end()

"========================================
"==== VimTex Configuration
"========================================
let g:vimtex_quickfix_mode=0
let g:vimtex_compiler_latexmk = {'options' : ['-pdf','-shell-escape','-verbose','-file-line-error','-synctex=1','-interaction=nonstopmode',]}
set conceallevel=1
let g:tex_conceal='abdmg'
hi Conceal ctermbg=none
let g:UltiSnipsExpandTrigger = "<nop>"

"========================================
"==== Python Dev Related
"========================================
let g:python_highlight_all = 1

"========================================
"=== COC.NVIM
"========================================

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

au FileType python let b:coc_root_patterns = ['.git', '.env', 'venv', '.venv', 'setup.cfg', 'setup.py', 'pyrightconfig.json', 'env', 'pyproject.toml']


"========================================
"==== Fuzzy Search Finder
"========================================
noremap <leader>f :Files<CR>
noremap <leader>g :Commits<CR>
noremap <leader>t :Tags<CR>


"========================================
"==== Git Gutter
"========================================
set updatetime=300

"========================================
"==== UltiSnips
"========================================
let g:UltiSnipsSnippetDirectories=["UltiSnips", "snips"]
