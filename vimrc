call pathogen#infect()
call pathogen#helptags()

set rtp+=/opt/homebrew/opt/fzf

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
colorscheme base16-tomorrow-night

" Higlhight search
set hls
highlight Search ctermbg=red

set cursorline
set cc=100
set clipboard^=unnamed
set visualbell t_vb=    " turn off error beep/flash
set novisualbell        " turn off visual bell
set tabstop=2
set shiftwidth=2
set expandtab

set list
set listchars=tab:\|\ ,trail:-
set signcolumn=yes

highlight EndSpaces ctermbg=red ctermfg=white
highlight Tabs ctermbg=none ctermfg=0
highlight SpecialKey ctermbg=none ctermfg=10
highlight Sign ctermbg=none

match EndSpaces /\s\+$/
match Tabs /\t/

let g:gitgutter_map_keys = 0

" Gists config
let g:gist_post_private = 1
let g:gist_open_browser_after_post = 1

""" Mappings
let mapleader=" "
nnoremap <SPACE> <Nop>
map <Leader>b <C-^>

" Pane Navigation
map <Leader>k <C-w><Up>
map <Leader>j <C-w><Down>
map <Leader>l <C-w><Right>
map <Leader>h <C-w><Left>
map <Leader>= <C-w>=
map <Leader>+ :vertical resize +5<CR>
map <Leader>- :vertical resize -5<CR>

" Use more natural splitting
set splitbelow
set splitright

" Ale
let g:ale_linters = {
\   'javascript': ['standard'],
\   'ruby': ['rubocop'],
\}
let g:ale_fixers = {
\   'javascript': ['standard'],
\   'ruby': ['rubocop'],
\}
let g:ale_lint_on_save = 1
let g:ale_ruby_rubocop_executable = 'bin/rubocop'

" Folding
let g:ruby_fold = 1
set foldlevelstart=99

map <Leader>p :FZF<Enter>

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

" Buffer Navigation
map <Leader>] :bnext<Enter>
map <Leader>[ :bprevious<Enter>
map <Leader>w :Bdelete<Enter>

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

" Auto close html tags in these files
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.vue'

" Airline
set laststatus=2
set ttimeoutlen=50
let g:airline_theme='base16_tomorrow'
let g:airline#extensions#tabline#enabled = 1

" Local vimrc
let g:localvimrc_whitelist='/Users/jon/Code/.*'
let g:localvimrc_sandbox = 0

"  Ag config
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

" Vimux / Rails
"
let VimuxUseNearest = 1
let g:vroom_map_keys = 0
let g:vroom_use_vimux = 1

map <Leader>tz :call VimuxZoomRunner()<CR>
map <Leader>tc :call VimuxCloseRunner()<CR>
map <Leader>ta :VroomRunTestFile<CR>
map <Leader>tl :VroomRunNearestTest <CR>
map <Leader>a :A<CR>

" Golang
"
map <Leader>ge :GoIfErr<CR>

" Dash
"
map <Leader>d :Dash<CR>
map <Leader>ds :Dash <C-R><C-W> 

" Auto clear search highlight
"
nnoremap <esc> :noh<return><esc>
