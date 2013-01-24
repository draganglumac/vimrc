set nocompatible
set laststatus=2
set encoding=utf-8
set t_Co=256
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Command-T'
Bundle 'SuperTab'
Bundle 'cscope.vim'
Bundle 'badwolf'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree'
colorscheme koehler


filetype plugin indent on
set nu
syntax on
