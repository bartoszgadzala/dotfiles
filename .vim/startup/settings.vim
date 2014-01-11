"============== General Settings ===============
set cursorline
set number
set autowrite
set enc=utf-8

syntax enable

"============= Configure Solarized =============
set background=dark
colorscheme solarized

"============== Configure Airline ==============
set laststatus=2
set gfn=Source\ Code\ Pro\ for\ Powerline\ Light\ 10
let g:airline_powerline_fonts=1

"=========== Configure NeoComplCache ===========
let g:neocomplcache_enable_at_startup = 1 " always load neocc
let g:neocomplcache_enable_auto_select = 1 " auto-popup!
if !exists('g:neocomplcache_omni_patterns')
	let g:neocomplcache_omni_patterns = {} " set a default pattern dict
endif
" this tells neocc when to try for completions... after '.', '(', etc.
let g:neocomplcache_omni_patterns.haxe = '\v([\]''"\)]|\w|(^\s*))(\.|\()'
