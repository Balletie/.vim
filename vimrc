" Pathogen
execute pathogen#infect()

set backspace=indent,eol,start

" Highlight search
set hlsearch

" Linenumbers
set number
set ruler
set laststatus=2

" Syntax Highlighting
syntax on
set background=light
"let g:solarized_termcolors=256
"colorscheme solarized
"colorscheme zenburn
colorscheme 256-jungle

" Syntastic flags
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11'
let g:syntastic_haskell_checkers = ['ghc_mod']

" Tagbar for Haskell
let g:tagbar_type_haskell = {
    \ 'ctagsbin'  : 'hasktags',
    \ 'ctagsargs' : '-x -c -o-',
    \ 'kinds'     : [
        \  'm:modules:0:1',
        \  'd:data: 0:1',
        \  'd_gadt: data gadt:0:1',
        \  't:type names:0:1',
        \  'nt:new types:0:1',
        \  'c:classes:0:1',
        \  'cons:constructors:1:1',
        \  'c_gadt:constructor gadt:1:1',
        \  'c_a:constructor accessors:1:1',
        \  'ft:function types:1:1',
        \  'fi:function implementations:0:1',
        \  'o:others:0:1'
    \ ],
    \ 'sro'        : '.',
    \ 'kind2scope' : {
        \ 'm' : 'module',
        \ 'c' : 'class',
        \ 'd' : 'data',
        \ 't' : 'type'
    \ },
    \ 'scope2kind' : {
        \ 'module' : 'm',
        \ 'class'  : 'c',
        \ 'data'   : 'd',
        \ 'type'   : 't'
    \ }
\ }

" Show a list of tab completions
set wildmode=longest,full
set wildmenu

set foldmethod=syntax
au BufWinEnter * silent! :%foldopen!
highlight Folded ctermbg=black ctermfg=white
