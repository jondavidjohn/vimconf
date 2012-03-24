call pathogen#infect()

" Turn on line numbering. Turn it off with "set nonu"
set nu

" " Set syntax on
syntax on

" " Indent automatically depending on filetype
" filetype indent on
set autoindent

" " Case insensitive search
set ic

" " Higlhight search
set hls

" Change colorscheme from default
set background=dark
colorscheme solarized

set tabstop=4
set shiftwidth=4
set list
set listchars=tab:\|\ ,trail:-
set noexpandtab
hi SpecialKey ctermbg=none ctermfg=0
highlight EndSpaces ctermfg=9
match EndSpaces /\s\+$/
