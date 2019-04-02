set shiftwidth=2
set tabstop=2

" Add babel parser to standard linter
let b:ale_javascript_standard_options = '--parser babel-eslint'

" linters to use
let b:ale_linters = ['standard']

" Fix files with prettier then standard
let b:ale_fixers = ['prettier', 'standard']

let b:ale_fix_on_save = 1
