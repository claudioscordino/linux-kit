
set tags+=./tags;/,tags;/
set tags+=/var/tmp/tags

command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
	 	\ | wincmd p | diffthis

set tabstop=8
set shiftwidth=4
set softtabstop=8
set expandtab
set autoindent
set smartindent
set smarttab
set copyindent
set preserveindent

"freebsd code
"set noexpandtab
"set shiftwidth=8
let g:gitgutter_enabled = 1

filetype plugin indent on

highlight clear SignColumn

let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#default#section_truncate_width = {
            \ 'b': 70,
            \ 'c': 60,
            \ 'x': 50,
            \ 'y': 120,
            \ 'z': 45,
            \ 'warning': 100,
            \ }
" usefull only on mac (macvim), other vims block on this,
" then it must be the last line
set nofullscreen
