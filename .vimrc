"|---------------------------------------------------------------------------|"
"|                Personal .vimrc file of Sandeep Subramanian                |"
"|---------------------------------------------------------------------------|"

" Use Vim settings instead of Vi settings.
" This must be first as it changes other options as a side effect.
set nocompatible

" Unset all autocommands.
:autocmd!

" Manage plugins with plug.vim.
call plug#begin('~/.vim/plugged')

" Get Tomorrow theme bundle.
Plug 'https://github.com/chriskempson/tomorrow-theme.git', { 'rtp': 'vim' }

call plug#end()

" Make backspace behave normally in insert mode.
set backspace=indent,eol,start

" Switch on syntax highlighting.
syntax on

" Use Tomorrow-Night-Bright theme
colorscheme Tomorrow-Night-Bright

" Enable file type detection and language specific indenting.
filetype plugin indent on

" Show line numbers.
set number

" Allow hidden buffers.
set hidden

" Add a colored column at 80 to indicate standard column size.
set colorcolumn=80

" Increase command history to 100.
" Change default viminfo settings to give preference to the value of history.
set viminfo=<100,'20,f1,s100
"           |    |   |  + registers with more than 100KB skipped
"           |    |   + store file marks
"           |    + remember marks for 20 previously edited files
"           + store maximum 100 lines for each register
set history=100

" Set default tab behaviour to 4 spaces and enable autoindenting.
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent

" Remove trailing spaces from all lines before buffer write.
autocmd BufWritePre * :%s/\s\+$//e

" Add search higlighting, realtime matching and smart case-insensitive search.
set hlsearch
set incsearch
set ignorecase
set smartcase

" Show matching parantheses.
set showmatch

" Use UTF-8 encoding by default.
set encoding=utf-8

" Disable backups and store swap files at $HOME/.vim/swp/
set nobackup
set swapfile
set directory^=$HOME/.vim/swp//
