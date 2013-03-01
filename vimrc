set nocompatible
set laststatus=2
set encoding=utf-8
set t_Co=256
set swapfile
set dir=/tmp
set tabstop=4
set tags=./tags;/
set shiftwidth=4
set backspace=indent,eol,start
set expandtab
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Command-T'
Bundle 'cscope.vim'
Bundle 'SuperTab'
Bundle 'badwolf'
Bundle 'Syntastic'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree'
Bundle 'paster.vim'
Bundle 'CRefVim'
Bundle 'a.vim'
Bundle 'c.vim'
Bundle 'ctags.vim'
colorscheme badwolf

filetype plugin indent on
set nu
syntax on
