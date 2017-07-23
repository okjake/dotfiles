" Usage:
" $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" $ vim +PluginInstall +qall

" Enable syntax highlighting
syntax on

" Use OS clipboard
set clipboard=unnamed

" Show line numbers
set number

" Remove some nerdtree waffle
let NERDTreeMinimalUI=1

" Remove pipe chars from NERDTree window boundary
set fillchars+=vert:\ 

" Vundle config
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'w0rp/ale'
Plugin 'w0ng/vim-hybrid'

call vundle#end()
filetype plugin indent on

" Always open NERDTree
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

set background=dark
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1
colorscheme hybrid

" Hide tilde chars
hi NonText guifg=bg

" Keep swap files but dump them in a separate dir
set backupdir=~/.tmp,.
set dir=~/.tmp,.

" 2 space tabs
set tabstop=2
set shiftwidth=2
set expandtab

set guioptions-=T
set guioptions-=r
set guioptions-=L

set linespace=6
set guifont=Menlo\ Regular:h13

map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

set backspace=indent,eol,start
set mouse=a
