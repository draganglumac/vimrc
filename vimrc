let g:powerline_pycmd="py3"
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
set rtp+=~/.vim/plugged

call plug#begin('~/.vim/plugged')
  
Plug 'vim-scripts/cscope.vim'
Plug 'vim-scripts/SuperTab'
" You have to symlink .vim/plugged/badwolf/colors/badwolf.vim to .vim/colors/badwolf.vim
Plug 'vim-scripts/badwolf'
Plug 'tomasiser/vim-code-dark'
Plug 'vim-scripts/Syntastic'
Plug 'Lokaltog/vim-powerline'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/paster.vim'
Plug 'vim-scripts/CRefVim'
Plug 'vim-scripts/a.vim'
Plug 'vim-scripts/c.vim'
Plug 'vim-scripts/ctags.vim'
Plug 'vim-scripts/WebAPI.vim'
Plug 'vim-scripts/Gist.vim'
Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'vim-scripts/renamer.vim'
Plug 'airblade/vim-gitgutter'
Plug 'Shougo/unite.vim'
Plug 'derekwyatt/vim-scala'
Plug 'udalov/kotlin-vim'
Plug 'hashivim/vim-terraform'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"colorscheme badwolf
colorscheme codedark
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

" haskell-vim options
" -- Features --
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords
" -- Highlighting --
" g:haskell_classic_highlighting = 1 " enable classic higlighting, use only if
" opinionated highlighting gets on your nerves
" -- Indentation --
"  Haskell
let g:haskell_indent_if = 3
let g:haskell_indent_case = 2
let g:haskell_indent_let = 4
let g:haskell_indent_where = 6
let g:haskell_indent_do = 3
let g:haskell_indent_in = 1
let g:haskell_indent_guard = 2
let g:haskell_indent_case_alternative = 1
" Cabal
let g:cabal_indent_section = 2

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

call plug#end()
