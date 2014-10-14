set noexpandtab

set tags+=./tags;/,tags;/
set tags+=/var/tmp/tags

command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
	 	\ | wincmd p | diffthis

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

highlight clear SignColumn
