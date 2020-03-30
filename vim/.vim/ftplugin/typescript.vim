set shiftwidth=2
set tabstop=2

" linters to use
let b:ale_linters = ['eslint']

" Fix files with prettier then standard
"let b:ale_fixers = ['prettier', 'standard']
let b:ale_fixers = ['prettier']

let b:ale_fix_on_save = 1
