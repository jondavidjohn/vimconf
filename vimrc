call pathogen#infect()
call pathogen#helptags()

" Turn on line numbering. Turn it off with set nonu
set nu

" Keep pwd in step with open file
"autocmd BufEnter * silent! lcd %:p:h

" " Set syntax on
syntax enable

" " Indent automatically depending on filetype
filetype plugin on
set cindent
set backspace=indent,eol,start
set title titlestring=

" " Case insensitive search
set ic

" Change colorscheme from defaults
set t_Co=256
colorscheme slate

" Higlhight search
set hls
highlight Search ctermbg=11 ctermfg=0

"let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set cursorline
set cc=80
hi ColorColumn ctermbg=233
hi clear CursorLine
hi CursorLine ctermbg=233
hi CursorLineNr term=bold ctermfg=red ctermbg=233
hi LineNr ctermfg=darkgrey
hi FoldColumn ctermbg=yellow ctermfg=black
hi Folded ctermbg=yellow ctermfg=black
set clipboard=unnamed
set visualbell t_vb=    " turn off error beep/flash
set novisualbell        " turn off visual bell
set tabstop=2
set shiftwidth=2
set expandtab
set list
set listchars=tab:\|\ ,trail:-
hi SpecialKey ctermbg=none ctermfg=232
highlight EndSpaces ctermbg=88 ctermfg=255
match EndSpaces /\s\+$/
hi MatchParen ctermbg=196 ctermfg=255

let g:syntastic_check_on_open=1
let g:syntastic_python_checker_args = " --ignore=E501,W402 "

""" Mappings
let mapleader=" "

" Buffer Navigation
map <Leader>k <C-w><Up>
map <Leader>j <C-w><Down>
map <Leader>l <C-w><Right>
map <Leader>h <C-w><Left>
" Use more natural splitting
set splitbelow
set splitright

" auto set paste (disable indent on cmd-v)

" auto semicolon EOL
nnoremap <Leader>; A;<Esc>

" Syntastic
map <Leader>s :SyntasticToggleMode<Enter>
map <Leader>se :Errors<Enter><Leader>j
map <Leader>sc :SyntasticCheck<Enter>

" Make Arrows move differently
nmap <Up> 10k
nmap <Down> 10j
nmap <Left> ^
nmap <Right> $

" Indentation
nmap > >>
nmap < <<
vmap > >gv
vmap < <gv

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

" PowerLine Config
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
let g:Powerline_symbols = 'fancy'

" Command T ignore
set wildignore+=**/node_modules/**,**/kohana/**,wp/**,wp-admin/**,wp-includes/**,.git/**,.svn/**,*.png,*.jpg,*.swf,*.gif,*.zip

" Code Folding
nmap <Leader>f za
nmap <Leader>F zA
nmap <Leader>x zM
nmap <Leader>e zR

" Preview current file in Chrome
nmap <Leader>P :!open -g -a "Google Chrome" %;<CR>
