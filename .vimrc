" Usage:
" $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" $ vim +PluginInstall +qall

" Enable syntax highlighting
syntax on

" Use OS clipboard for copypasta
set clipboard=unnamed

" Show line numbers
set number

" Show statusline
set laststatus=2

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
call vundle#end()
filetype plugin indent on

" Always open NERDTree
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
