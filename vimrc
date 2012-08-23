call pathogen#infect()
call pathogen#helptags()

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
let g:solarized_termcolors=256
set background=light
colorscheme solarized
"let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set cursorline
hi clear CursorLine
hi CursorLine ctermbg=255
set clipboard=unnamed
set visualbell t_vb=    " turn off error beep/flash
set novisualbell        " turn off visual bell
set tabstop=4
set shiftwidth=4
set list
set listchars=tab:\|\ ,trail:-
set noexpandtab
hi SpecialKey ctermbg=none ctermfg=252
highlight EndSpaces ctermbg=124 ctermfg=253
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

" auto set paste (disable indent on cmd-v)

" auto semicolon EOL
inoremap <leader>; <C-o>A;

" TagList Toggle
map <Leader>m :TlistToggle<Enter><Leader>h
let g:tlist_javascript_settings = 'javascript;s:string;a:array;o:object;f:function'

" Syntastic
map <Leader>s :SyntasticToggleMode<Enter>
map <Leader>se :Errors<Enter><Leader>j
map <Leader>sc :SyntasticCheck<Enter>

" Make Arrows move differently
nmap <Up> 20k
nmap <Down> 20j
nmap <Left> ^
nmap <Right> $

" Prevent Arrow movement edits to effect command-line mode
"cunmap <Up>
"cunmap <Down>
"cunmap <Left>
"cunmap <Right>


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

" Strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
nnoremap <silent> <Leader>sw :call <SID>StripTrailingWhitespaces()<CR>

" NERD Tree usage
" auto close if only nerdtree is openl
" let target_pwd=system('if [[ `pwd` == *"wp-content"* ]]; then echo `pwd` | sed s/wp-content.*/wp-content\\//g; else echo `pwd`/; fi ]]')
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <Leader>e :NERDTreeToggle<Enter>

" PowerLine Config
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
let g:Powerline_symbols = 'fancy'

