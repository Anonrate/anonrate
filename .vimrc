" set nocampatible
se nocp
" fieltype off
filet off

se rtp+=~/.vim/bundle/Vundle.vim
cal vundle#begin('~/.vim/bundle')
Plugin 'VundleVim/Vundle.vim'
Plugin 'delimitMate.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'c-standard-functions-highlight'
Plugin 'TagHighlight'
" Have to have 'se et'..  I don't want that..
"Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'mh21/errormarker.vim'
Plugin 'qpkorr/vim-bufkill'
Plugin 'vim-airline/vim-airline'
cal vundle#end()
" syntax on
syn on

" filetype plugin indent on
filet plugin indent on

" colorscheme anoncol
colo anoncol

au bufNewFile *.c,*.h so ~/.vim/templates/c.template
au bufNewFile *.c,*.h exe "1," . 25 . "g/\|FILENAME\|.*/s~~" . expand("%:t")
au bufNewFile *.c,*.h exe "1," . 25 . "g/\|DATE\|/s~~" . strftime("%m/%d/%Y")
au bufNewFile *.c,*.h exe "1," . 25 . "g/\|TIME\|/s//" . strftime("%H:%M:%S")
au bufNewFile *.c,*.h exe "1," . 25 . "g/\|AUTHOR\|/s//Anonrate"
au bufNewFile *.c,*.h exe "1," . 25 . "g/\|YEAR\|/s//" . strftime("%Y")
" Sets 'backsapce' to '2' which allows backspacing over autoIndents, line
" 	breaks and the start of insert.
se bs=2			" Same as 'se bs=indent,eol,start'.
"se cuc			" set cursorColumn
se cul			" set cursorLine
se enc=utf8		" set encoding=utf8
se fenc=utf8	" set fileEncoding=utf8
se history=200	" set history=200
se ls=2			" set lastStatus=2 (Show 'lastStatus' always.)
se nu			" set number (Line numbers)
se ru			" set ruler (Cursor position)

" NOTE:	Turning off 'showcmd' will increase terminal performance.
se sc	" set showcmd (Show (partial) command in last line of screen.)

se si	" set smartIndent
se sm	" set showMatch (Show matching brackets.)

" Shows 'n' lines of  context around the cursor.
" NOTE:	Setting 'so' to a large value, will result in the cursor always being
" 		in the middle of the window (except at start, end or when
" 		lines wrap).
se so=140	" set scrolloff=140

se sw=4		" set shiftWidth=4
se tgc		" set termGuiColors
se ts=4		" set tabStop=4

" Time out on ':mappings' and key codes.
se ttimeout	" set ttimeout

" Time waited for key codes or ':mappings' to be completed.
se ttm=100	" set ttimeoutlen=100

se tw=79	" set textWidth=79
se wmnu		" se wildmenu

" columnColor
" Colors column '80' to represent the 'textWidth' setting.  Also colors column
" 	column '120'.
let &cc="80," . join(range(120, 478), ",")

" Disable loading all extensions.
let g:ariline#extensions#disable_rtp_load	= 1

" Load only wanted extensions.
let g:airline_extensions	= [
							\ 'tabline',
							\ 'wordcount',
							\ 'branch',
							\ ]
"{{{1
" Show buffer numbers.
let g:airline#extensions#tabline#buffer_nr_show				= 1

" Switch position of buffers and tabs on sple tabline.
let g:airline#extensions#tabline#switch_buffers_and_tabs	= 1

" How numbers are displayed in tab mode.
" Splits and tab number
let g:airline#extensions#tabline#tab_nr_type				= 2

" Label for buffers.
let g:ariline#extensions#tabline#buffers_label	= 'BUFFERS'

" Label for tabs.
let g:airline#extensions#tabline#tabs_label		= 'TABS'

" Use powerline fonts.
let g:airline_powerline_fonts = 1
"}}}1

fu! SyntaxItem()
	return
		\ 'hi<'
		\	. synIDattr(
		\		synID(line('.'), col('.'), 1),
		\		'name') .
		\ '> trans<'
		\	. synIDattr(
		\		synID(line('.'), col('.'), 0),
		\		'name') .
		\ '> lo<'
		\	. synIDattr(
		\		synIDtrans(synID(line('.'), col('.'), 1)),
		\		'name') .
		\ '>'
endf

"let g:airline_section_y = '%{SyntaxItem()}'
