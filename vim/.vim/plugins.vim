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
Plug 'tpope/vim-vividchalk' " A colorscheme
Plug 'tpope/vim-surround' " Parenthesis matching

Plug 'lervag/vimtex' " LaTex in Vim.
Plug 'sirver/ultisnips' " The ultimate snippet solution for Vim.
Plug 'anufrievroman/vim-angry-reviewer' " Angry review suggestions

Plug 'vim-python/python-syntax' " Python syntax highlighting for Vim.

Plug 'alonfnt/gvim-zoom', {'branch': 'devel'} " Increase font in GVim.

Plug 'neoclide/coc.nvim', {'branch': 'release'} " Big boy LSP.

Plug 'junegunn/fzf', {'do': { -> fzf#install() } } " Fuzzy search.
Plug 'junegunn/fzf.vim' " Fuzzy search VIM integration.
call plug#end()

"========================================
"==== Colorscheme
"========================================
if has('gui_running')
    set t_Co=256
    set background=dark
    colorscheme desert
else
    set t_Co=256
    set background=dark
    colorscheme vividchalk
endif

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
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

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
command! -nargs=? Fold :call CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')

au FileType python let b:coc_root_patterns = ['.git', '.env', 'venv', '.venv', 'setup.cfg', 'setup.py', 'pyrightconfig.json', 'env', 'pyproject.toml']


"========================================
"==== Fuzzy Search Finder
"========================================
noremap <leader>f :Files<CR>
noremap <leader>b :Buffers<CR>

"========================================
"==== Git Gutter
"========================================
set updatetime=300

"========================================
"==== UltiSnips
"========================================
let g:UltiSnipsSnippetDirectories=["UltiSnips", "snips"]

"========================================
"==== Vim-Fugitive
"========================================
noremap <leader>g :0Git<CR>:normal gU<CR>
set statusline=%<%f\ %{FugitiveStatusline()}\ %h%m%r%=%-14.(%l,%c%V%)\ %P
