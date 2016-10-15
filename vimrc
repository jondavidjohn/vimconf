call pathogen#infect()
call pathogen#helptags()

let g:jsx_ext_required = 0
let html_wrong_comments = 1

" use old regex engine (better ruby performance)
set re=1

" turn off swapfiles for now
set noswapfile

" Turn on line numbering. Turn it off with set nonu
set nu

" " Set syntax on
syntax on

" " Indent automatically depending on filetype
filetype plugin indent on
set smartindent
set backspace=indent,eol,start
set title titlestring=

" " Case insensitive search
set ic

" Change colorscheme from defaults
set background=dark
colorscheme base16-ocean

" Higlhight search
set hls
highlight Search ctermbg=red

set cursorline
set cc=100
set clipboard=unnamed
set visualbell t_vb=    " turn off error beep/flash
set novisualbell        " turn off visual bell
set tabstop=2
set shiftwidth=2
set expandtab
set list
set listchars=tab:\|\ ,trail:-
highlight EndSpaces ctermbg=red ctermfg=white
match EndSpaces /\s\+$/
let g:gitgutter_sign_column_always = 1
hi SpecialKey ctermbg=none ctermfg=232
hi Sign ctermbg=none

" Gists config
let g:gist_post_private = 1
let g:gist_open_browser_after_post = 1

""" Mappings
let mapleader=" "
map <Leader>b <C-^>

" Buffer Navigation
map <Leader>k <C-w><Up>
map <Leader>j <C-w><Down>
map <Leader>l <C-w><Right>
map <Leader>h <C-w><Left>
map <Leader>= <C-w>=
map <Leader>+ <C-w>+
map <Leader>- <C-w>-

" Use more natural splitting
set splitbelow
set splitright

" Syntastic
let g:syntastic_check_on_open=1
let g:syntastic_python_checker_args = " --ignore=E501,W402 "
let g:syntastic_ruby_rubocop_exec = "/Users/jon/.rbenv/shims/rubocop-git --hound"
map <Leader>s :SyntasticToggleMode<Enter>
map <Leader>se :Errors<Enter><Leader>j
map <Leader>sc :SyntasticCheck<Enter>

" CtrlP
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_use_caching = 0
let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }
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
map <Leader>n :tabnew .<enter>
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

" Airline
set laststatus=2
set ttimeoutlen=50
let g:airline_theme='base16_tomorrow'
function! AirlineInit()
  let g:airline_section_y = airline#section#create(['%{strftime("%k:%M")}'])
endfunction
autocmd VimEnter * call AirlineInit()

" Local vimrc
let g:localvimrc_whitelist='/Users/jon/Source/.*'
let g:localvimrc_sandbox = 0

" Ag config
let g:ag_working_path_mode="r"
let g:ag_prg="ag --literal"
set grepprg=ag\ --nogroup\ --nocolor

" Tags
map <Leader>mm <C-]>
map <Leader>mv :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
map <Leader>ms <C-w><C-]>

" Tagbar
map <Leader>mb :TagbarToggle<CR>
let g:tagbar_left = 1
let g:tagbar_show_visibility = 1
let g:tagbar_compact = 1
let g:tagbar_autoclose = 1
