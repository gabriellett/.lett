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

nmap <silent> <Leader>p :NERDTreeToggle<CR>

set wildmode=list:longest   "make cmdline tab completion similar to bash
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~,*.pyc,*.class,*/tmp/*,*.so,*.swp,*.zip,*.gif,*.jpeg,*.jpg,*.png "stuff to ignore when tab completing

set backupdir=~/.lett/.vim/tmp
set directory=~/.lett/.vim/tmp

set clipboard=unnamed

nmap <silent> <Leader>c :.w !pbcopy<CR><CR>
nmap <silent> <Leader>v :r !pbpaste<CR>
