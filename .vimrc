set nocompatible
filetype off

"============== Bootstrap Vundle ============
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

"================= Bundles ===================
Bundle 'altercation/vim-colors-solarized'
Bundle 'bling/vim-airline'
Bundle 'jdonaldson/vaxe'
Bundle 'scrooloose/syntastic'
Bundle 'Shougo/neocomplcache'
Bundle 'scrooloose/nerdtree'

"=========== Load custom settings ============
source ~/.vim/startup/mappings.vim
source ~/.vim/startup/settings.vim

"============== Filetype stuff ===============
filetype plugin on
filetype indent on
