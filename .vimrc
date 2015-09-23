let g:tex_flavor='latex'

set nu

filetype plugin on
filetype indent on
syntax on

set guifont=monofur:h14

set expandtab
set softtabstop=3
set shiftwidth=3

set autoindent
set cindent

set formatoptions+=t

set mouse=a

nmap <F7> mzgg=G`z<CR>

" specify submodules in ~/.dotfiles/.gitmodules
call plug#begin('~/.vim/plugged')

" function! BuildYCM(info)
"   if a:info.status == 'installed' || a:info.force
"      !./install.sh
"   endif
" endfunction
" Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }

Plug 'mattn/emmet-vim'

Plug 'Shougo/neocomplete'

call plug#end()
