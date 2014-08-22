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
let g:solarized_termcolors=256
colorscheme solarized

" Show a list of tab completions
set wildmode=longest,full
set wildmenu

set foldmethod=syntax
au BufWinEnter * silent! :%foldopen!
highlight Folded ctermbg=black ctermfg=white
