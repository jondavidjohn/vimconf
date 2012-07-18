call pathogen#infect()

" Turn on line numbering. Turn it off with set nonu
set nu

" " Set syntax on
syntax on

" " Indent automatically depending on filetype
filetype plugin indent on
set autoindent
set backspace=indent,eol,start

" " Case insensitive search
set ic

" " Higlhight search
set hls

" Change colorscheme from default
set t_Co=256
colorscheme twilight256

set cursorline
hi clear CursorLine
hi CursorLine ctermbg=236

set visualbell t_vb=    " turn off error beep/flash
set novisualbell        " turn off visual bell
set tabstop=4
set shiftwidth=4
set list
set listchars=tab:\|\ ,trail:-
set noexpandtab
hi SpecialKey ctermbg=none ctermfg=16
highlight EndSpaces ctermfg=2
match EndSpaces /\s\+$/
hi MatchParen ctermbg=1 ctermfg=15

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

" NERD Tree usage
" auto close if only nerdtree is openl
" let target_pwd=system('if [[ `pwd` == *"wp-content"* ]]; then echo `pwd` | sed s/wp-content.*/wp-content\\//g; else echo `pwd`/; fi ]]')
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <Leader>e :NERDTreeToggle<Enter>
