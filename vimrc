set nocompatible
set laststatus=2
set encoding=utf-8
set t_Co=256
set swapfile
set dir=/tmp
set tabstop=4
set tags+=~/.vim/tags/stl      
set tags+=~/.vim/tags/gl      
set tags+=~/.vim/tags/sdl      
set tags+=~/.vim/tags/qt4   

set softtabstop=4
set shiftwidth=4
set backspace=indent,eol,start
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
let g:gist_use_password_in_gitconfig = 1
Bundle 'gmarik/vundle'
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
Bundle 'WebAPI.vim'
Bundle 'Gist.vim'
Bundle 'DoxygenToolkit.vim'
Bundle 'vim-scripts/renamer.vim'
colorscheme badwolf
let g:DoxygenToolKit_briefTag_pre="@fn "
filetype plugin indent on
set nu
syntax on
