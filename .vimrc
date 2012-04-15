call pathogen#infect()

" Turn on line numbering. Turn it off with set nonu
set nu

" " Set syntax on
syntax on

" " Indent automatically depending on filetype
filetype plugin indent on
set autoindent

" " Case insensitive search
set ic

" " Higlhight search
set hls

" Change colorscheme from default
set background=dark
colorscheme solarized

set visualbell t_vb=    " turn off error beep/flash
set novisualbell        " turn off visual bell<<
set tabstop=4
set shiftwidth=4
set list
set listchars=tab:\|\ ,trail:-
set noexpandtab
hi SpecialKey ctermbg=none ctermfg=0
highlight EndSpaces ctermfg=9
match EndSpaces /\s\+$/

" Syntastic Options
let g:syntastic_check_on_open=1
let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': ['ruby', 'python'] }
let g:syntastic_python_checker_args = " --ignore=E501 "

" Buffer switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" TagList Toggle
map <C-t> :TlistToggle<Enter>

" GoTo File Equiv
map <C-f> :FufFile<Enter>

" Make Arrows move differently
map <Up> 10k
map <Down> 10j
map <Left> ^
map <Right> $
