set shiftwidth=2
set tabstop=2

" linters to use
let b:ale_linters = ['eslint']

" Fix files with prettier, and then standard
"let b:ale_javascript_standard_options = '--parser babel-eslint'
"let b:ale_fixers = ['prettier', 'standard']
let b:ale_fixers = ['prettier']

