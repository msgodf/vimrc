set nocompatible 
filetype off                  " required

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()

" use Vundle
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'kien/ctrlp.vim'
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'
" Use a fork that allows blacklisting of colors (allows it to work with dark
" themes)
Plugin 'nicwest/rainbow_parentheses.vim'
Plugin 'vim-scripts/paredit.vim'
Plugin 'vim-scripts/groovy.vim'

Plugin 'ekalinin/Dockerfile.vim'

Bundle 'chriskempson/base16-vim'
Bundle 'typedclojure/vim-typedclojure'

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

Bundle 'cypok/vim-sml'

call vundle#end()

"set rtp+=$GOROOT/misc/vim
set rtp+=/opt/powerline/powerline/bindings/vim
"execute pathogen#infect()
syntax on
filetype plugin indent on

set number

set expandtab
set softtabstop=4
set tabstop=4
set wrap
set shiftwidth=4
syntax enable

"let base16colorspace=256
set background=dark
colorscheme base16-default

set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000

" Disable arrow keys
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" create new tab
nmap <leader>n :tabnew<CR>

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let mapleader="\\"

" Always show status line
set laststatus=2

let g:rbpt_disabled_colors = ['black', 'brown']

au BufRead,BufNewFile *.gradle set filetype=groovy

" Disable Markdown folding
let g:vim_markdown_folding_disabled=1
