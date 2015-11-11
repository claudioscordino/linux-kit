" ==========================
" KEY MAPPINGS
" ==========================
"
" F1 - F2		Move across open buffers
" F3			Move across splitted windows
" F4 - F5		Fold/unfold rows
" F6			Indent code
" F7			Text wrapping
" F8 - F9		Comment/uncomment rows
" F12			Enable spelling
" Alt-1			Normal mode:	Search a tag (ctags)
" 			Insert mode:	Insert "\begin{itemize}"
" Alt-2			Normal mode:	Go to the next matching tag (ctags)
"			Insert mode: 	Insert "\item"
" Alt-3			Normal mode:	Returns from a Alt-1 (ctags)
"			Insert mode: 	Insert "\end{itemize}"
" Alt-4			Search the tag under cursor (ctags)
" Alt-5			Restore from Alt-4 (ctags)
" Alt-6			Search all calls to the function name under cursor (cscope)
" <tab>			Programming:	Code indenting
" 			Txt files:	Wrap line
" :e			Edit a new buffer
" :MRU			List Most Recently Used files
" gf			Go to file under cursor

set nocp " non vi compatible mode. Must be the first option.

" ==========================
" OMNICPP (disabled)
" ==========================

"	set nocp " non vi compatible mode. Must be the first option.
"	filetype plugin on " enable plugins
"	autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"	set completeopt=menu,menuone
"	let OmniCpp_MayCompleteDot = 1 " autocomplete with .
"	let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
"	let OmniCpp_MayCompleteScope = 1 " autocomplete with ::
"	let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)
"	let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files
"	let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype in popup window
"	let OmniCpp_DefaultNamespaces = ["std"]
"	let OmniCpp_ShowAccess = 1
"	let OmniCpp_GlobalScopeSearch = 1
"
"
"	" F11 autocompletes words
"	imap <F11> <c-p>


" ==========================
" GENERAL OPTIONS
" ==========================

set history=700
set undolevels=700
set autoread
set ignorecase

set vb t_vb=
set novisualbell
set noerrorbells
set mouse=a

set nobackup

" set laststatus=2	" State bar always visible

syn on			" Syntax highlighting

set hlsearch		" Coloured search

set incsearch		" Incremental search

set showmatch		" Shows correspondent brackets
set matchtime=5		" ... only for 5 tenths of second

" Jumps automatically to the last edited line:
 autocmd BufRead *,.* :normal '"


" ==========================
" INDENTING
" ==========================

set autoindent
set nocindent 
set smartindent
set copyindent
set preserveindent
" filetype plugin indent on

" F6 does indentation of code
map <F6> ==
vmap <F6> =

"Indentation is 8 spaces
set sw=8 ts=8


" ==========================
" CSCOPE (create DB through cscope -R)
" ==========================

source ~/.vim_runtime/vimrcs/cscope_maps.vim

function! LoadCscope()
    let db = findfile("cscope.out", ".;")
    if (!empty(db))
        let path = strpart(db, 0, match(db, "/cscope.out$"))
        set nocscopeverbose " suppress 'duplicate connection' error
        exe "cs add " . db . " " . path
        set cscopeverbose
    endif
endfunction
au BufEnter /* call LoadCscope()

" Alt-6 searches all calls to the function name under cursor
if has("gui_running")
	map <a-6> :cs find c <C-R>=expand("<cword>")<CR><CR>	
else
	map 6 :cs find c <C-R>=expand("<cword>")<CR><CR>	
endif

" ==========================
" CTAGS (create DB through ctags -R .)
" ==========================

set tags+=./tags;/,tags;/
set tags+=/var/tmp/tags

" Alt-1 searches a tag
if has("gui_running")
	map <a-1> :tj 
else
	map 1 :tj 
endif

" Alt-2 goes to the next tag
if has("gui_running")
	map <a-2> :tn<CR>
else
	map 2 :tn<CR>
endif

" Alt-3 returns from a tag
if has("gui_running")
	map <a-3> :tp<CR>
else
	map 3 :tp<CR>
endif

" Alt-4 searches the tag under cursor
if has("gui_running")
	map <a-4> g<c-]> 
else
	map 4 g<c-]> 
endif

" Alt-5 returns from Alt-4
if has("gui_running")
	map <a-5> <c-t> 
else
	map 5 <c-t> 
endif


" ==========================
" COLUMNS AND ALIGNMENT
" ==========================

" Number of columns after which wrap to the next line 
" (using a value less or equal to 80 the file can be read also from shell).
autocmd FileType txt,tex set textwidth=72

set lines=45
set co=120

" ==========================
" FILE TYPE SPECIFICS
" ==========================

if has("gui_running")
	imap <a-1> \begin{itemize}
	imap <a-2> \item 
	imap <a-3> \end{itemize}
else
	imap 1 \begin{itemize}
	imap 2 \item 
	imap 3 \end{itemize}
endif

" Numbers for all programming files
autocmd FileType c,h,cpp,php,hpp,java,py set number


" ==========================
" SPELLING
" ==========================

set spelllang=en_us
map <F12> :setlocal spell!<cr>

" ====================
" TAB KEY
" ====================

" We don't want the tab equal to spaces
set noexpandtab
"set smarttab

" The tab is equal to the size of 8 spaces for programming
autocmd FileType c,h,cpp,php,hpp,java,py set shiftwidth=8
autocmd FileType c,h,cpp,php,hpp,java,py set tabstop=8
autocmd FileType c,h,cpp,php,hpp,java,py set softtabstop=8

" Tab works as follows:
" - On programming files: indent
" - On other files: wrapping
map <tab> gqq
vmap <tab> gq
autocmd FileType c,h,cpp,php,hpp,java,py map <tab> ==
autocmd FileType c,h,cpp,php,hpp,java,py vmap <tab> =


" ====================
" TABS AND BUFFERS
" ====================

"	" F1-F2 to move across buffers
"	if has("gui_running")
"		map <F1> :tabp<CR>
"		map <F2> :tabn<CR>
"	else
"		map <F1> :bn!<CR>
"		map <F2> :bp!<CR>
"	endif
"map <F1> :tabp<CR>
"map <F2> :tabn<CR>
map <F1> :bp!<CR>
map <F2> :bn!<CR>

" F3 switches across splitted windows
map <F3> <c-w>w

" F4and F5 fold and unfold
vmap <F4> zf
map <F5> zd
set foldcolumn=0

" ====================
" TEXT WRAPPING
" ====================

map <F7> gqq
vmap <F7> gq

" ====================
" COMMENT OUT
" ====================

map <F8> :call Comment()<CR>
map <F9> :call Uncomment()<CR>

" Comments range (handles multiple file types)
function! Comment() range
  if &filetype == "css"
    execute ":" . a:firstline . "," . a:lastline . 's/^\(.*\)$/\/\* \1 \*\//'
  elseif &filetype == "html" || &filetype == "xml" || &filetype == "xslt" || &filetype == "xsd" || &filetype == "xhtml" || &filetype == "php"
    execute ":" . a:firstline . "," . a:lastline . 's/^\(.*\)$/<!-- \1 -->/'
  elseif &filetype == "c" || &filetype == "h"
    execute ":" . a:firstline . "," . a:lastline . 's/^\(.*\)$/\/* \1 *\//'
  else
    if &filetype == "java" || &filetype == "cs" || &filetype == "cpp" || &filetype == "hpp"
      let commentString = "// "
    elseif &filetype == "vim"
      let commentString = '"'
    elseif &filetype == "tex" || &filetype == "bib"
      let commentString = "%% "
    elseif &filetype == "cmm"
      let commentString = ";; "
    else
      let commentString = "## "
    endif
    execute ":" . a:firstline . "," . a:lastline . 's,^,' . commentString . ','
  endif
endfunction

" Uncomments range (handles multiple file types)
function! Uncomment() range
  if &filetype == "php" || &filetype == "css" || &filetype == "html" || &filetype == "xml" || &filetype == "xslt" || &filetype == "xsd" || &filetype == "xhtml"
    " http://www.vim.org/tips/tip.php?tip_id=271
    execute ":" . a:firstline . "," . a:lastline . 's/^\([/(]\*\|<!--\) \(.*\) \(\*[/)]\|-->\)$/\2/'
  elseif &filetype == "c" || &filetype == "h"
    execute ":" . a:firstline . "," . a:lastline . 's/^\([/(]\*\|\/\*\) \(.*\) \(\*[/)]\|\*\/\)$/\2/'
  else
    if &filetype == "java" || &filetype == "cs" || &filetype == "cpp" || &filetype == "hpp"
      let commentString = "// "
    elseif &filetype == "vim"
      let commentString = '"'
    elseif &filetype == "tex" || &filetype == "bib"
      let commentString = "%% "
    elseif &filetype == "cmm"
      let commentString = ";; "
    else
      let commentString = "## "
    endif
    execute ":" . a:firstline . "," . a:lastline . 's,^' . commentString . ',,'
  endif
endfunction


" ====================
" MICROSOFT WORD
" ====================

" reading Ms-Word documents (requires antiword)
autocmd BufReadPre *.doc set ro
autocmd BufReadPre *.doc set hlsearch!
autocmd BufReadPost *.doc %!antiword "%"

" ====================
" GUI OPTIONS
" ====================

set guioptions-=m

" Options for gvim
if has("gui_running")

	"Fonts used in gvim
	set guifont=Bitstream\ Vera\ Sans\ Mono\ 11
	set gfw=Bitstream\ Vera\ Sans\ Mono\ Bold\ 11
	set guifont=Bitstream\ Vera\ Sans\ Mono\ 11

endif

"""""""""""""""""""""""""""""""""""""""""""""""""""

command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
	 	\ | wincmd p | diffthis


let g:gitgutter_enabled = 1

highlight clear SignColumn

" ==========================
" VIM AIRLINE
" ==========================
"
let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#default#section_truncate_width = {
            \ 'b': 70,
            \ 'c': 60,
            \ 'x': 50,
            \ 'y': 120,
            \ 'z': 45,
            \ 'warning': 100,
            \ }

  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  " unicode symbols
  let g:airline_left_sep = '»'
"  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '«'
"  let g:airline_right_sep = '◀'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.readonly = ''


  " No warning:
  let g:airline_section_warning = {}

  " No file encoding or file format:
  let g:airline_section_y = {}
