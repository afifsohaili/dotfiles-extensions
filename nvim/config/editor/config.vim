" Spaces & Tabs

set expandtab             " Use space characters in place of tab characters
set softtabstop=2         " Two spaces soft tab stop
set shiftwidth=2          " Two spaces when indenting

" Search {{{
set incsearch       " search as characters are entered
set hlsearch        " highlight matche
set ignorecase      " ignore case when searching
set smartcase       " ignore case if search pattern is lower case
		    " case-sensitive otherwise

" clear search highlight with //
nmap <silent> // :let @/=""<CR>

" Use ,w to strip trailing whitespaces
nmap <leader>w :StripWhitespace<CR>

" Shortcut to set nopaste
nmap <leader>np :set nopaste<CR>
