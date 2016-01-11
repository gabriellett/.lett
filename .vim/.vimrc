set nocompatible
set encoding=utf8

"Pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

set rtp+=~/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim/

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

set iskeyword-=_

inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-s)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-s2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
