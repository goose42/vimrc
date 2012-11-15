set incsearch
set tabstop=2
""set expandtab  "comment out this line when making a make file, with let tabs be tabs and not spaces"
set shiftwidth=2
set smartindent
set number

""set autoindent
":map q %
set t_Co=256
""colorscheme 
colorscheme blackdust
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
map <space> za

"for C/C++ , open headers"
map <c-h> :vsp %<.h <CR> 

"for nerdtree"
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <c-n> :NERDTree <CR>

map <F6> gg!Gxargs ./petite_run <Enter>


"for pathogen"
call pathogen#infect()


"this like is for powerline"
let g:Powerline_symbols = 'fancy'
  ""set encoding=utf-8
set laststatus=2
set guifont=Anonymous\ Pro\ for\ Powerline:h13
  ""set fillchars+=stl:\ ,stlnc:\
let g:Powerline_colorscheme = 'solarized256'
