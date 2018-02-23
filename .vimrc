
set nocompatible
syntax on
set nowrap
set encoding=utf8

" Start Vundle Configuration

" Disable the file type for vundle
filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Utility

" ---------------------------------------
" Language Support
" ---------------------------------------

" Python

Plugin 'vim-python/python-syntax'

set backspace=indent,eol,start

call vundle#end()
filetype plugin indent on

" End Vundle Configuration

" ----------------------------------------
" Settings
" ----------------------------------------

set number
set ruler

set tabstop=4
set shiftwidth=4
set smarttab

set laststatus=2

set cursorline

set t_Co=256
set background=dark

" ----------------------------------------
"  Mappings
" ----------------------------------------

:inoremap ;; <Esc>
