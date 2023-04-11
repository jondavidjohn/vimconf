setlocal tabstop=4
setlocal shiftwidth=4
setlocal nolist

command! -bang A call go#alternate#Switch(<bang>0, '')
command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
command! -bang AS call go#alternate#Switch(<bang>0, 'split')

map <Leader>ta :wa<CR> :GolangTestCurrentPackage<CR>
map <Leader>tl :wa<CR> :GolangTestFocused<CR>
