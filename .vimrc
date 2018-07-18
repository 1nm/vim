"" Vundle configuration
    set nocompatible
    filetype off

    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()

    " Start listing plugins
    Plugin 'VundleVim/Vundle.vim'             " Manage Vundle itself
    Plugin 'tpope/vim-fugitive'               " Vim Fugitive
    Plugin 'ctrlpvim/ctrlp.vim'               " Ctrl+P
    Plugin 'rust-lang/rust.vim'               " Rust syntax highlighting
    Plugin 'altercation/vim-colors-solarized' " Solarized colors
    Plugin 'fatih/vim-go'                     " Go syntax
    Plugin 'PProvost/vim-ps1'                 " Powershell syntax
    Plugin 'vim-ruby/vim-ruby'                " Ruby syntax
    Plugin 'derekwyatt/vim-scala'             " Scala syntax
    Plugin 'morhetz/gruvbox'                  " Gruvbox colors
    Plugin 'vim-airline/vim-airline'          " Vim Airline
    Plugin 'Valloric/YouCompleteMe'           " YouCompleteMe

    call vundle#end()

"" Enable incremental search
set incsearch

"" Enable sytax highlighting and filetype detection
syntax enable
filetype plugin indent on
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"" Add Powerline fonts and configuration
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 3
let g:airline#extensions#whitespace#max_lines = 15000
let g:airline#extensions#whitespace#checks = [ 'indent', 'trailing' ]
"" set listchars=trail:·,tab:-~
set list

"" Disable YCM complete preview/doc window
set completeopt-=preview

"" Colorscheme configurations
"" Gruvbox
set background=dark
colorscheme gruvbox

"" Formatting Preferences
set nowrap
set history=1000
set ruler
set backspace=eol,start,indent
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent
set number
set hls
set relativenumber
set cursorline
set title

"" Golang specific settings
let g:go_fmt_autosave = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1

"" Neovim specific settings
if has('nvim')
    "" Allow ALT+(hjkl) to switch between windows
    "" When in the terminal emulator
    :tnoremap <A-h> <C-\><C-n><C-w>h
    :tnoremap <A-j> <C-\><C-n><C-w>j
    :tnoremap <A-k> <C-\><C-n><C-w>k
    :tnoremap <A-l> <C-\><C-n><C-w>l
    "" When in the editor in normal mode
    :nnoremap <A-h> <C-w>h
    :nnoremap <A-j> <C-w>j
    :nnoremap <A-k> <C-w>k
    :nnoremap <A-l> <C-w>l

    "" Enable 'jk' to exit terminal emulator insert mode
    :tnoremap jk <C-\><C-n>

    "" Have Neovim ignore unknown control sequences
    let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 0
endif

"" Set Ctrl-l and Ctrl-h to move to next and previous tabs.
:map <C-h> :tabp<cr>
:map <C-l> :tabn<cr>
:inoremap jk <ESC>

"" \xl will prettify the current XML file using xmlint
map <leader>xl <Esc>:%!xmllint --format - \| sed '1d'<CR>

"" Ctrl-P plugin settings
:map ,m :CtrlPMixed<cr>
:map ,b :CtrlPBuffer<cr>

"" Highlight after 85 characters in a row (only in source code filetypes)
autocmd FileType c,h,cpp,java,scala,rb,py,go highlight Overlength ctermbg=94 guibg=94
autocmd FileType c,h,cpp,java,scala,rb,py,go match Overlength /\%>85v.\+/
autocmd FileType ruby,yaml,toml setlocal shiftwidth=2 tabstop=2
autocmd FileType go setlocal shiftwidth=8 tabstop=8 noexpandtab nolist
