set nocompatible
set encoding=utf8

"Pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

set rtp+=/Users/glett/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2
set t_Co=256 "Term Colors

colorscheme molokai

set ruler "Cursor Position
set nu "Line numbers
set cursorline "Cursor Line
set cursorcolumn "Cursor Column

if has('mouse') "Hide mouse
       	set mousehide  " Hide mouse after chars typed
	set mouse=a "use in all modes
endif
