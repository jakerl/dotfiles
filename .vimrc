" set font to monofur in size 14
set guifont=monofur:h14

" type jk to leave insert mode, rather than <ESC>
inoremap jk <ESC>

" make space bar leader key, rather than \
let mapleader = "\<Space>"

filetype plugin indent on
syntax on
set encoding=utf-8

" turn on line numbers
set nu


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

" auto-pairs pairs up the second bracket, parenthesis, quote after inputting
" the first 
Plug 'jiangmiao/auto-pairs'

" dracula color scheme
Plug 'zenorocha/dracula-theme'

" comments/uncomments lines
Plug 'scrooloose/nerdcommenter'

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
