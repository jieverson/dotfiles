call plug#begin('~/.vim/plugged')
    Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
    Plug 'tomasr/molokai'
    Plug 'fholgado/minibufexpl.vim'
call plug#end()

nmap <F7> :NERDTreeToggle<CR>

set number
set mouse=a
set wildmenu
syn on

let g:molokai_original = 1
colo molokai