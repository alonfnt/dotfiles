" Vim color file
" Maintainer:	Lan Rogers <lan.rogers.book@gmail.com>
" Last Change:	2011 May 30

" First remove all existing highlighting.
hi clear

let colors_name = "IDLE"

hi Normal guifg=Black guibg=white

" Define some colors
let s:orange          = { "gui": "#ff4500", "cterm": "167" }

" Groups used in the 'highlight' and 'guicursor' options default value.
hi ErrorMsg term=standout ctermbg=DarkRed ctermfg=White guibg=Red guifg=White
hi IncSearch term=reverse cterm=reverse gui=reverse guibg=black guifg=yellow
hi ModeMsg term=bold cterm=bold gui=bold
hi VertSplit term=reverse cterm=reverse gui=reverse
hi Visual term=reverse cterm=reverse gui=reverse guifg=Grey guibg=fg
hi VisualNOS term=underline,bold cterm=underline,bold gui=underline,bold
hi DiffText term=reverse cterm=bold ctermbg=Red gui=bold guibg=Red
hi Cursor guibg=Green guifg=NONE
hi lCursor guibg=Cyan guifg=NONE
hi Directory term=bold ctermfg=DarkBlue guifg=Blue
hi LineNr term=underline ctermfg=Brown guifg=Brown
hi MoreMsg term=bold ctermfg=DarkGreen gui=bold guifg=SeaGreen
hi Question term=standout ctermfg=DarkGreen gui=bold guifg=SeaGreen
hi Search term=reverse ctermbg=Yellow ctermfg=NONE guibg=Yellow guifg=NONE
hi SpecialKey term=bold ctermfg=DarkBlue guifg=Blue
hi Title term=bold ctermfg=DarkMagenta gui=bold guifg=Magenta
hi WarningMsg term=standout ctermfg=DarkRed guifg=Red
hi WildMenu term=standout ctermbg=Yellow ctermfg=Black guibg=Yellow guifg=Black
hi Folded term=standout ctermbg=Grey ctermfg=DarkBlue guibg=LightGrey guifg=DarkBlue
hi FoldColumn term=standout ctermbg=Grey ctermfg=DarkBlue guibg=Grey guifg=DarkBlue
hi DiffAdd term=bold ctermbg=LightBlue guibg=LightBlue
hi DiffChange term=bold ctermbg=LightMagenta guibg=LightMagenta
hi DiffDelete term=bold ctermfg=Blue ctermbg=LightCyan gui=bold guifg=Blue guibg=LightCyan

hi StatusLine	cterm=bold ctermbg=Black ctermfg=Yellow guibg=white guifg=blue
hi StatusLineNC	cterm=bold ctermbg=blue ctermfg=black  guibg=white guifg=black
hi NonText term=bold ctermfg=Blue gui=bold guifg=gray guibg=white
hi Cursor guibg=fg guifg=bg
hi Visual guibg=black guifg=yellow

" syntax highlighting
hi PreProc    term=underline cterm=NONE ctermfg=darkmagenta  gui=NONE guifg=magenta3
hi Identifier term=underline cterm=NONE ctermfg=darkcyan     gui=NONE guifg=blue
hi Comment    term=NONE      cterm=NONE ctermfg=darkred      gui=NONE guifg=gray40
hi Constant   term=underline cterm=NONE ctermfg=darkgreen    gui=NONE guifg=darkgreen
hi Special    term=bold      cterm=NONE ctermfg=lightred     gui=NONE guifg=green3
hi Statement  term=bold      cterm=bold ctermfg=Magenta       gui=NONE guifg=OrangeRed3
hi Type	      term=underline cterm=NONE ctermfg=yellow       gui=NONE guifg=purple 

if exists("syntax_on")
  let syntax_cmd = "enable"
  runtime syntax/syncolor.vim
  unlet syntax_cmd
endif

" vim: sw=2
