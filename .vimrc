
set nocompatible
syntax on
" set termguicolors
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
"  Language Support
" ---------------------------------------

Plugin 'vim-python/python-syntax'
Plugin 'fatih/vim-go'
Plugin 'vim-ruby/vim-ruby'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-markdown'
Plugin 'mxw/vim-jsx'
Plugin 'othree/html5.vim'
Plugin 'dart-lang/dart-vim-plugin'

set backspace=indent,eol,start

call vundle#end()
filetype plugin indent on

" End Vundle Configuration

" ---------------------------------------
"  Color Schemes
" ---------------------------------------

Plugin 'liuchengxu/space-vim-dark'

" ----------------------------------------
"  Settings
" ----------------------------------------

set number
set ruler

filetype plugin indent on

set tabstop=2
set shiftwidth=2
set expandtab

set laststatus=2

set cursorline

set t_Co=256
colorscheme space-vim-dark

" ----------------------------------------
"  Mappings
" ----------------------------------------

:inoremap ;; <Esc>
