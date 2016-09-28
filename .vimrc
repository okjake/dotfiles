" Usage:
" $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" $ vim +PluginInstall +qall

" Enable syntax highlighting
syntax on

" Use OS clipboard for copypasta
set clipboard=unnamed

" Show line numbers
set number

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
Plugin 'kristijanhusak/vim-hybrid-material'
call vundle#end()
filetype plugin indent on

" Always open NERDTree
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

set background=dark
colorscheme hybrid_material

" Keep swap files but dump them in a separate dir
set backupdir=~/.tmp,.
set dir=~/.tmp,.
