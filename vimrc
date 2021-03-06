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
" set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Plugin 'gmarik/Vundle.vim'
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
Plugin 'Shougo/unite.vim'
Plugin 'derekwyatt/vim-scala'

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

" ----------------------
" cscope.vim keybindings
" ----------------------
nnoremap <leader>fa :call cscope#findInteractive(expand('<cword>'))<CR>
nnoremap <leader>l :call ToggleLocationList()<CR>
" s: Find this C symbol
nnoremap  <leader>fs :call cscope#find('s', expand('<cword>'))<CR>
" g: Find this definition
nnoremap  <leader>fg :call cscope#find('g', expand('<cword>'))<CR>
" d: Find functions called by this function
nnoremap  <leader>fd :call cscope#find('d', expand('<cword>'))<CR>
" c: Find functions calling this function
nnoremap  <leader>fc :call cscope#find('c', expand('<cword>'))<CR>
" t: Find this text string
nnoremap  <leader>ft :call cscope#find('t', expand('<cword>'))<CR>
" e: Find this egrep pattern
nnoremap  <leader>fe :call cscope#find('e', expand('<cword>'))<CR>
" f: Find this file
nnoremap  <leader>ff :call cscope#find('f', expand('<cword>'))<CR>
" i: Find files #including this file
nnoremap  <leader>fi :call cscope#find('i', expand('<cword>'))<CR>

