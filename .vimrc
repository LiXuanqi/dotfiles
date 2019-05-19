set nocompatible
syntax on
set number
set relativenumber
set nowrap
set encoding=utf-8
set fileencoding=utf-8
set clipboard=unnamed
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
Plug 'w0rp/ale' " Syntax check
Plug 'morhetz/gruvbox' " Theme
Plug 'scrooloose/nerdtree' " File tree
Plug 'vim-airline/vim-airline'
" Plug 'python-mode/python-mode', { 'branch': 'develop' }
Plug 'kien/ctrlp.vim' " File search
call plug#end()

" Theme - gruvbox
colorscheme gruvbox


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
" NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$']
