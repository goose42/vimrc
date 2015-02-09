set incsearch
set tabstop=2
set expandtab  "comment out this line when making a make file, with let tabs be tabs and not spaces"
set shiftwidth=2
set autoindent
set smartindent
set number
""set textwidth=80

""this is stuff for python
" "set tabstop=4
""set expandtab
""set softtabstop=4
""set shiftwidth=4
filetype plugin on
filetype indent on


"Gui stuff
set guifont=Monaco:h15

":map q %
set t_Co=256
""colorscheme camo 
colorscheme blackdust
""colorscheme github
set mouse=a
syntax on

nnoremap S diw"0P

inoremap <Nul> <C-n>

"set the name of the file on the title"
let &titlestring = expand("%:t")
if &term == "screen"
  set t_ts=^[k
  set t_fs=^[\
endif
if &term == "screen" || &term == "xterm"
  set title
endif

"use folds, use space to toggle folds"
set foldmethod=syntax
set foldlevelstart=1
map <space> za

"for C/C++ , open headers"
map <c-h> :vsp %<.h <CR> 

"for nerdtree"
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <F5> :NERDTree <CR>

map <F6> gg!Gxargs ./petite_run <Enter>


"for pathogen"
call pathogen#infect()




"for the vim-airline stuff
set laststatus=2

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

set fillchars+=stl:\ ,stlnc:\
