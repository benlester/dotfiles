set shiftwidth=2
set tabstop=2

" linters to use
let b:ale_linters = ['pylint']

" Fix files with yapf
let b:ale_fixers = ['yapf']

let b:ale_fix_on_save = 1
