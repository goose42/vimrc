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
map <space> za

"for C/C++ , open headers"
map <c-h> :vsp %<.h <CR> 

"for nerdtree"
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <c-F11> :NERDTree <CR>

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

""omnicomplete and ctags
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
set omnifunc=omni#cpp#complete#Main
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
""au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
""set completeopt=menuone,menu,longest,preview


"for html stuff and what not

