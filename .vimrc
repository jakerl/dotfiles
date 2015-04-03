let g:tex_flavor='latex'

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

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

call plug#begin('~/.vim/plugged')

function! BuildYCM(info)
   if a:info.status == 'installed' || a:info.force
      !./install.sh
   endif
endfunction
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
" Plug 'scrooloose/syntastic'
Plug 'tpope/vim-vinegar'
Plug 'jeaye/color_coded'

call plug#end()
