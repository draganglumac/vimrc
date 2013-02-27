set nocompatible
set laststatus=2
set encoding=utf-8
set t_Co=256
set backupdir=~/tmp
set tabstop=4
set tags=./tags;/
set shiftwidth=4
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


function CreateTags()
    exec ':!ctags -R;echo Populated tags'
endfunction
nmap <F4> :call CreateTags()<CR>

filetype plugin indent on
set nu
syntax on
