
" ====================
" GRAPHIC COLORS
" ====================

hi clear
colorscheme default

" Status bar for shell
hi StatusLine guifg=darkgrey guibg=darkred ctermfg=darkred


" Colour of patches
hi DiffFile guibg=NONE guifg=grey50 gui=bold
hi DiffAdded guifg=red guibg=NONE gui=bold
hi DiffRemoved guifg=orange guibg=NONE gui=bold
hi DiffAdd guifg=white guibg=black
hi DiffRemove guifg=white guibg=green
hi DiffChange guifg=red

" Gui background color
highlight Normal guibg=white guifg=black
highlight Visual guibg=lightmagenta

"Colour of the state bar
hi StatusLine gui=italic gui=bold guifg=darkred guibg=grey ctermfg=magenta

"Colour of the search
hi search guifg=red guibg=lightgreen gui=bold ctermfg=cyan ctermbg=red

"Colour of the incremental search
hi incsearch guifg=lightgreen guibg=red ctermfg=white ctermbg=red cterm=reverse

hi LineNr guifg=grey50

"Colours of the keywords for programming
autocmd FileType c,h,cpp,php,hpp,java :hi Number guifg=magenta ctermfg=green
autocmd FileType c,h,cpp,php,hpp,java :hi boolean guifg=magenta
autocmd FileType c,h,cpp,php,hpp,java :hi Constant guifg=magenta
autocmd FileType c,h,cpp,php,hpp,java :hi cConstant guifg=magenta
autocmd FileType c,h,cpp,php,hpp,java :hi cppConstant guifg=magenta
autocmd FileType c,h,cpp,php,hpp,java :hi Type guifg=red gui=none
autocmd FileType c,h,cpp,php,hpp,java :hi cType guifg=red
autocmd FileType c,h,cpp,php,hpp,java :hi cppType guifg=red 
autocmd FileType * :hi Statement guifg=red gui=none 
autocmd FileType c,h,cpp,php,hpp,java :hi Statement guifg=#a020f0
autocmd FileType c,h,cpp,php,hpp,java :hi cStatement guifg=#a020f0
autocmd FileType c,h,cpp,php,hpp,java :hi cppStatement guifg=#a020f0
autocmd FileType c,h,cpp,php,hpp,java :hi Structure guifg=red 
autocmd FileType c,h,cpp,php,hpp,java :hi cStructure guifg=darkgreen 
autocmd FileType c,h,cpp,php,hpp,java :hi cppStructure guifg=red 
autocmd FileType c,h,cpp,php,hpp,java :hi String guifg=violet gui=italic ctermfg=cyan
autocmd FileType c,h,cpp,php,hpp,java :hi cString guifg=violet gui=italic ctermfg=cyan
autocmd FileType c,h,cpp,php,hpp,java :hi cppString guifg=violet gui=italic ctermfg=cyan
autocmd FileType * :hi Comment guifg=violet gui=italic 
autocmd FileType c,h,cpp,php,hpp,java :hi Comment guifg=grey30 gui=italic 
autocmd FileType c,h,cpp,php,hpp,java :hi cComment guifg=grey30 gui=italic 
autocmd FileType c,h,cpp,php,hpp,java :hi cppComment guifg=grey30 gui=italic 

"Fonts shown in tex files
autocmd FileType tex,bib :hi texSection guifg=blue gui=bold
autocmd FileType tex,bib :hi texComment guifg=darkcyan gui=italic

" Color settings for the cursor (different colors for insert mode)
highlight Cursor   guifg=red  guibg=steelblue
highlight iCursor  guifg=white  guibg=steelblue

" Cursor shape (insert => vertical line)
set guicursor+=i:ver30-iCursor

" Blinking settings (normal mode => no blinking)
set guicursor+=n-v-c:blinkon0-Cursor

hi PreProc guifg=#7a378b
hi def cCustomFunc  guifg=#3d00ff
hi def cCustomClass  guifg=#008b8b

let g:netrw_liststyle=3 " Tree view with :E

let g:airline_theme="solarized"
