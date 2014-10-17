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
