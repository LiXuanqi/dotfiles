set nocompatible
syntax on
set number
set encoding=utf-8
set fileencoding=utf-8
set clipboard=unnamed
" Split window
set splitbelow
set splitright

" Vim Plug
call plug#begin('~/.vim/plugged')
Plug 'vim-syntastic/syntastic' " Syntax check
Plug 'scrooloose/nerdtree' " File tree
Plug 'python-mode/python-mode', { 'branch': 'develop' }
Plug 'kien/ctrlp.vim' " File search
call plug#end()

" Syntastic - general
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Syntastic - python in yelp
let g:syntastic_python_checkers = ['pep8']
let g:syntastic_python_pep8_args='--ignore=E501'
let g:pymode_python = 'python3'

" Python
au BufNewFile,BufRead *.py
			\ set tabstop = 4
			\ set softtabstop = 4
			\ set shiftwidth = 4
			\ set textwidth = 79
			\ set expandtab
			\ set autoindent
			\ set fileformat = unix

" Frontend
au BufNewFile,BufRead *.html, *.css, *.js
			\ set tabstop = 2
			\ set softtabstop = 2
			\ set shiftwidth = 2
" NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$']
