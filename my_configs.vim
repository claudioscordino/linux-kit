set noexpandtab

set tags+=./tags;/,tags;/
set tags+=/var/tmp/tags

command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
	 	\ | wincmd p | diffthis

set tabstop=8
set shiftwidth=4
set softtabstop=8
set expandtab
"set noexpandtab
set autoindent
set smartindent
set smarttab

filetype plugin indent on

highlight clear SignColumn

set nofullscreen

let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#default#section_truncate_width = {
            \ 'b': 70,
            \ 'c': 60,
            \ 'x': 50,
            \ 'y': 120,
            \ 'z': 45,
            \ 'warning': 100,
            \ }
