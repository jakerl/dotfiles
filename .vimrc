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

" specify submodule URLs in ~/.dotfiles/.gitmodules
call plug#begin('~/.vim/plugged')

" neocomplete provides word completion
Plug 'Shougo/neocomplete'

call plug#end()

"------------------------
"--- neocomplete settings
"------------------------
" enable neocomplete to start
let g:neocomplete#enable_at_startup = 1 
" enable smartcase
let g:neocomplete#enable_smart_case = 1
" disable AutoComplPop
let g:acp_enableAtStartup = 0 
" set minimum syntax keyword length of 3
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" define dictionary
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" define keyword
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" plugin key-mappings
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()
