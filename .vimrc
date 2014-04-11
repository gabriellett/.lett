set t_Co=256
set nocompatible                  " Must come first because it changes other options.
 
silent! call pathogen#runtime_append_all_bundles()
 
syntax on                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.
 
runtime macros/matchit.vim        " Load the matchit plugin.
 
set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.
 
set backspace=indent,eol,start    " Intuitive backspacing.
 
set hidden                        " Handle multiple buffers better.
 
set wildmenu                      " Enhanced command line completion.
set wildmode=longest,list         " complete files like a shell.
 
set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.
 
set number                        " Show line numbers.
set ruler                         " Show cursor position.
 
set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.
 
set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.
 
set title                         " Set the terminal's title
 
set visualbell                    " No beeping.
set cursorline
set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set cmdheight=2
set tabstop=2                    " Global tab width.
set shiftwidth=2                 " And again, related.
set expandtab                    " Use spaces instead of tabs
set numberwidth=5
set showtabline=2
set winwidth=79
 
" Store temporary files in a central spot
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
 
" This makes RVM work inside Vim. I have no idea why.
set shell=/bin/sh
set laststatus=2                  " Show the status line all the time
 
" Useful status information at bottom of screen
"set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P
 
" Prevent Vim from clobbering the scrollback buffer. See
" http://www.shallowsky.com/linux/noaltscreen.html
set t_ti= t_te=
" keep more context when scrolling off the end of a buffer
set scrolloff=3
 
"Color Settings
"colorscheme railscasts
" set t_Co=256
" set background=dark
" color solarized
" color codeschool
 
" solarized options
"let g:solarized_termcolors = 256
"let g:solarized_visibility = "high"
"let g:solarized_contrast = "high"
"colorscheme solarized
" Map leader key to ','
"let mapleader=","
 
set guifont=Monaco:h12
let g:NERDTreeWinPos = "right"
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar
 
" keep longer history
set history=1000
 
" Make the current window big, but leave others context
set winwidth=84
" We have to have a winheight bigger than we want to set winminheight. But if
" we set winheight to be huge before winminheight, the winminheight set will
" fail.
set winheight=5
set winminheight=5
set winheight=999
