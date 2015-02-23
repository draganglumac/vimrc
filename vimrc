set nocompatible
set laststatus=2
set fileencoding=utf-8
set encoding=utf-8
set t_Co=256
set swapfile
set dir=/tmp
set tabstop=2
set tags+=~/.vim/tags/stl      
set tags+=~/.vim/tags/gl      
set tags+=~/.vim/tags/sdl      
set tags+=~/.vim/tags/qt4   

set softtabstop=2
set shiftwidth=2
set expandtab
set backspace=indent,eol,start
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'cscope.vim'
Plugin 'SuperTab'
Plugin 'badwolf'
Plugin 'Syntastic'
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdtree'
Plugin 'paster.vim'
Plugin 'CRefVim'
Plugin 'a.vim'
Plugin 'c.vim'
Plugin 'ctags.vim'
Plugin 'WebAPI.vim'
Plugin 'Gist.vim'
Plugin 'DoxygenToolkit.vim'
Plugin 'vim-scripts/renamer.vim'
Plugin 'airblade/vim-gitgutter'

colorscheme badwolf
let g:DoxygenToolKit_briefTag_pre="@fn "
let g:gist_use_password_in_gitconfig = 1
filetype plugin indent on
set nu
set hlsearch
" Press space to turn off highlighting and clear any message
:nnoremap <silent> <Space> :nohlsearch<Bar>echo<CR>
syntax on
autocmd VimEnter * NERDTree | wincmd p
let g:NERDTreeWinSize=25
autocmd FileType ruby setl tabstop=2 shiftwidth=2 expandtab
let g:syntastic_always_populate_loc_list = 1
set splitright
set splitbelow
