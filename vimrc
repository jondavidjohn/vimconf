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
set novisualbell        " turn off visual bell
set tabstop=4
set shiftwidth=4
set list
set listchars=tab:\|\ ,trail:-
set noexpandtab
hi SpecialKey ctermbg=none ctermfg=0
highlight EndSpaces ctermfg=9
match EndSpaces /\s\+$/

let g:syntastic_check_on_open=1
let g:syntastic_python_checker_args = " --ignore=E501,W402 "

""" Mappings

let mapleader=" "

" Buffer Navigation
map <Leader>k <C-w><Up>
map <Leader>j <C-w><Down>
map <Leader>l <C-w><Right>
map <Leader>h <C-w><Left>

" TagList Toggle
map <Leader>m :TlistToggle<Enter><Leader>h
let g:tlist_javascript_settings = 'javascript;s:string;a:array;o:object;f:function'

" Syntastic
map <Leader>s :SyntasticToggleMode<Enter>
map <Leader>se :Errors<Enter><Leader>j
map <Leader>sc :SyntasticCheck<Enter>

 "Make Arrows move differently
"cmap <Up> 10k
"cmap <Down> 10j
"cmap <Left> ^
"cmap <Right> $

" Indentation
nmap > >>
nmap < <<
vmap > >gv
vmap < <gv

" NERDCommenter
map <Leader>c <Leader>cl
map <Leader>x <Leader>cu

" Tab Usage
map <Leader>] :tabn<enter>
map <Leader>[ :tabp<enter>

" FuzzyFinder
function! FuzzyFinderFunc()
   if getfsize(expand('%')) == -1
      let g:fuf_keyOpen='<CR>'
      let g:fuf_keyOpenTabpage='<C-l>'
   else
      let g:fuf_keyOpen='<C-l>'
      let g:fuf_keyOpenTabpage='<CR>'
   endif
   silent! :FufFile ./
endfunction

map <leader>f :call FuzzyFinderFunc()<CR>

