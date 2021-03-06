colorscheme gruvbox

set autoindent
set background=dark
set backspace=eol,start,indent
set cinoptions+=:0
set clipboard^=unnamed,unnamedplus
set cmdheight=2
set cursorline
set display=lastline
set expandtab
set history=1000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set list
set listchars=tab:^\ ,trail:~
set noerrorbells
set nowrap
set number
set ruler
set shiftwidth=4
set showcmd
set showmatch matchtime=1
set smartcase
set smartindent
set smarttab
set softtabstop=4
set tabstop=4
set title
set whichwrap=b,s,h,l,<,>,[,],~

nnoremap <Esc><Esc> :nohlsearch<CR><ESC>
syntax on

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 3
let g:airline#extensions#whitespace#max_lines = 15000
let g:airline#extensions#whitespace#checks = [ 'indent', 'trailing' ]

