set nocompatible
syntax on
set number
set relativenumber
set nowrap
" set encoding=utf-8
" set fileencoding=utf-8
set clipboard=unnamed
set autoread

" indent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Split window
set splitbelow
set splitright

" Vim Plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
" Plug 'vim-syntastic/syntastic' " Syntax check
Plug 'tpope/vim-sensible'
Plug 'w0rp/ale' " Syntax check
Plug 'morhetz/gruvbox' " Theme
Plug 'vim-airline/vim-airline'
" Plug 'python-mode/python-mode', { 'branch': 'develop' }
Plug 'kien/ctrlp.vim' " File search
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
call plug#end()

" Theme - gruvbox
colorscheme gruvbox

" vim-airlne
let g:airline_theme='gruvbox'

" Python
au BufNewFile,BufRead *.py
			\ set tabstop=4 |
			\ set softtabstop=4 |
			\ set shiftwidth=4 |
			\ set textwidth=79 |
			\ set expandtab |
			\ set autoindent |
			\ set fileformat=unix

" Frontend
au BufNewFile,BufRead *.html, *.css, *.js
			\ set tabstop=2 |
			\ set softtabstop=2 |
			\ set shiftwidth=2 

" ale
let g:ale_fix_on_save=1
let g:ale_fixers={
            \ 'python': ['autopep8']
            \ }
