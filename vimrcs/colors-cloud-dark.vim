
" ====================
" GRAPHIC COLORS
" ====================

hi clear
colorscheme default

" Status bar for shell
hi StatusLine guifg=darkgrey guibg=darkred ctermfg=darkred


" Gui background color
highlight Normal guibg=black guifg=white ctermbg=black ctermfg=white
highlight Visual guibg=darkblue guifg=lightblue ctermbg=darkblue ctermfg=lightblue cterm=reverse gui=reverse

"Colour of the state bar
hi StatusLine gui=italic gui=bold guifg=darkred guibg=grey ctermfg=magenta

"Colour of the search
hi search guifg=red guibg=lightgreen gui=bold ctermfg=red ctermbg=yellow

"Colour of the incremental search
hi incsearch guifg=lightgreen guibg=red ctermfg=red ctermbg=yellow cterm=reverse

hi LineNr guifg=grey50 ctermfg=darkcyan


" Colour of patches
hi DiffFile guifg=magenta ctermfg=magenta
hi DiffLine guifg=grey50 gui=bold ctermfg=cyan
hi DiffSubname guifg=grey50 gui=bold ctermfg=cyan
hi DiffAdded guifg=red gui=bold ctermfg=red cterm=bold
hi DiffAdded guifg=red gui=bold ctermfg=red cterm=bold
hi DiffAdd guifg=red gui=bold ctermfg=red cterm=bold
hi DiffRemoved guifg=orange gui=bold ctermfg=green cterm=bold
hi DiffRemove guifg=orange gui=bold ctermfg=green cterm=bold
hi DiffChange guifg=green gui=bold ctermfg=green cterm=bold


"Colours of the keywords for programming
autocmd FileType c,h,cpp,php,hpp,java :hi Number guifg=green ctermfg=green
autocmd FileType c,h,cpp,php,hpp,java :hi boolean guifg=green ctermfg=green
autocmd FileType c,h,cpp,php,hpp,java :hi Constant guifg=green ctermfg=green
autocmd FileType c,h,cpp,php,hpp,java :hi cConstant guifg=green ctermfg=green
autocmd FileType c,h,cpp,php,hpp,java :hi cppConstant guifg=green ctermfg=green

autocmd FileType c,h,cpp,php,hpp,java :hi Type guifg=#60ff60 ctermfg=yellow gui=none
autocmd FileType c,h,cpp,php,hpp,java :hi cType guifg=#60ff60 ctermfg=yellow
autocmd FileType c,h,cpp,php,hpp,java :hi cppType guifg=#60ff60 ctermfg=yellow
autocmd FileType c,h,cpp,php,hpp,java :hi Structure guifg=#60ff60 ctermfg=yellow
autocmd FileType c,h,cpp,php,hpp,java :hi cStructure guifg=#60ff60 ctermfg=yellow
autocmd FileType c,h,cpp,php,hpp,java :hi cppStructure guifg=#60ff60 ctermfg=yellow

autocmd FileType * :hi Statement guifg=#ffff60 ctermfg=yellow gui=none
autocmd FileType c,h,cpp,php,hpp,java :hi Statement guifg=#ffff60 ctermfg=yellow
autocmd FileType c,h,cpp,php,hpp,java :hi cStatement guifg=#ffff60 ctermfg=yellow
autocmd FileType c,h,cpp,php,hpp,java :hi cppStatement guifg=#ffff60 ctermfg=yellow

" It was SkyBlue:
autocmd FileType c,h,cpp,php,hpp,java :hi String guifg=darkcyan ctermfg=darkcyan
autocmd FileType c,h,cpp,php,hpp,java :hi cString guifg=darkcyan ctermfg=darkcyan
autocmd FileType c,h,cpp,php,hpp,java :hi cppString guifg=darkcyan ctermfg=darkcyan

autocmd FileType * :hi Comment guifg=darkcyan ctermfg=darkcyan
autocmd FileType c,h,cpp,php,hpp,java :hi Comment guifg=darkcyan ctermfg=darkcyan
autocmd FileType c,h,cpp,php,hpp,java :hi cComment guifg=darkcyan ctermfg=darkcyan
autocmd FileType c,h,cpp,php,hpp,java :hi cppComment guifg=darkcyan ctermfg=darkcyan

"Fonts shown in tex files
autocmd FileType tex,bib :hi texSection guifg=yellow ctermfg=yellow gui=none
autocmd FileType tex,bib :hi texComment guifg=darkcyan ctermfg=darkcyan

" Color settings for the cursor (different colors for insert mode)
highlight Cursor   guifg=red  guibg=steelblue ctermfg=red ctermbg=cyan
highlight iCursor  guifg=white  guibg=orange ctermfg=red ctermbg=yellow

" Cursor shape (insert => vertical line)
set guicursor+=i:ver30-iCursor

" Blinking settings (normal mode => no blinking)
set guicursor+=n-v-c:blinkon0-Cursor

hi PreProc guifg=#7a378b
hi def cCustomFunc  guifg=#3d00ff
hi def cCustomClass  guifg=#008b8b

let g:airline_theme="luna"
