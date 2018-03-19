" Ruby specific settings.
setlocal tabstop=2
setlocal shiftwidth=2
setlocal expandtab
setlocal autoindent
setlocal smarttab
setlocal formatoptions=croqln

" add do/end and | to auto pairs
let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`', '|':'|'}

map <Leader>ta :call vroom#RunTestFile({'runner':'spring rspec --color --fail-fast'})<CR>
map <Leader>tl :call vroom#RunNearestTest({'runner':'spring rspec --color --fail-fast'})<CR>
map <Leader>th :call vroom#RunNearestTest({'runner':'HEADLESS=false spring rspec --color --fail-fast'})<CR>
