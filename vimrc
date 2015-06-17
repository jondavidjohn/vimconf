call pathogen#infect()
call pathogen#helptags()

" turn off swapfiles for now
set noswapfile

" Turn on line numbering. Turn it off with set nonu
set nu

" " Set syntax on
syntax on

" " Indent automatically depending on filetype
filetype plugin on
set smartindent
set backspace=indent,eol,start
set title titlestring=

" " Case insensitive search
set ic

" Change colorscheme from defaults
colorscheme slate

" Higlhight search
set hls
highlight Search ctermbg=11 ctermfg=0

set cursorline
set cc=80
hi SignColumn ctermbg=233
hi ColorColumn ctermbg=233
hi clear CursorLine
hi CursorLine ctermbg=233
hi CursorLineNr term=bold ctermfg=red ctermbg=233
hi LineNr ctermfg=darkgrey
hi DiffAdd      ctermbg=7 ctermbg=22
hi DiffChange   ctermbg=33
hi DiffDelete   ctermfg=7 ctermbg=88
hi DiffText     ctermbg=172
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

" Relative Line Numbering (Normal Mode)
autocmd FocusLost * :set number
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
autocmd CursorMoved * :set relativenumber

" Gists config
let g:gist_post_private = 1
let g:gist_open_browser_after_post = 1

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

" Syntastic
let g:syntastic_check_on_open=1
let g:syntastic_python_checker_args = " --ignore=E501,W402 "
map <Leader>s :SyntasticToggleMode<Enter>
map <Leader>se :Errors<Enter><Leader>j
map <Leader>sc :SyntasticCheck<Enter>

" CtrlP
map <Leader>p :CtrlP<Enter>

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
map <Leader>t :tabnew .<enter>
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

" CtrlP ignore
set wildignore+=**/_site/**,**/node_modules/**,**/kohana/**,wp/**,wp-admin/**,wp-includes/**,.git/**,.svn/**,*.png,*.jpg,*.swf,*.gif,*.zip

" Preview current file in Chrome
nmap <Leader>P :!open -g -a "Google Chrome" %;<CR>

" Airline
set laststatus=2
set ttimeoutlen=50
