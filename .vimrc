set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/nerdtree'

call vundle#end()            " required
filetype plugin indent on    " required
"###############################################################################
filetype plugin indent on    " required
let mapleader=","

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
:nnoremap <leader>ev :vsplit $MYVIMRC<cr> " edit .vimrc 
:nnoremap <leader>sv :source $MYVIMRC<cr> " source .vimrc
" " ####################################################
"
colorscheme badwolf

set nocompatible "welcome to 21st century
filetype on
filetype indent on
filetype plugin on
syntax on

set completeopt+=preview

set viminfo^=!
set visualbell "blink instead of beep
set encoding =utf-8

set listchars=tab:▸\ ,eol:¬,space:· " show Invisible Characters

set history=256 "things to remember
set autowrite "writes on make/shell commands
set timeoutlen=250 " time to wait after Esc
set showmatch " show matching parantheses
set laststatus=2 "always show status line
set backspace=2
set relativenumber
set ruler
   
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
"   " max width and coloring conventions
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="80,".join(range(120,999),",") 


" indenting logic
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent


" split navigation
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>

" ####################################################
" ####################################################
"           Plugins
" ####################################################
" ####################################################
" check plugin/autocomplete.vim & autoload/autocomplete.vim to see 
" YouCompleteMe and Ultisnips configurations

" ####### Nerd Tree ########
map <C-n> :NERDTreeToggle<CR> 
let g:NERDTreeIndicatorMapCustom = {
       \ "Modified"  : "✹",
       \ "Staged"    : "✚",
       \ "Untracked" : "✭",
       \ "Renamed"   : "➜",
       \ "Unmerged"  : "═",
       \ "Deleted"   : "✖",
       \ "Dirty"     : "✗",
       \ "Clean"     : "✔︎",
       \ "Unknown"   : "?"
       \ }
"

