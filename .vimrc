set nocompatible
filetype off

" Bootstrap Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" Bundles
Bundle 'altercation/vim-colors-solarized'
Bundle 'bling/vim-airline'

" Configure Solarized
set background=dark
colorscheme solarized

" Configure Airline
set laststatus=2
set gfn=Source\ Code\ Pro\ for\ Powerline\ Light\ 10
let g:airline_powerline_fonts=1

syntax enable
filetype plugin indent on

set number
set autowrite

