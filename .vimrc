" automatic plugin loading
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

syntax on
filetype plugin indent on

colorscheme jellybeans            " Works well with 256-color terminals.
set hidden                        " Permit switching from a buffer with unsaved changes.
set number                        " Show line numbers in gutter
set mouse=a                       " Do sane things with the mouse when selecting text, scroll-wheeling.
set ruler                         " Show line, column in lower right status.
set list listchars=tab:»·,trail:· " Death to trailing whitespace.
set ignorecase                    " Ignore case when searching
set smartcase                     " ...unless the human typed a capital.

map <space> <C-f>
map <backspace> <C-b>
map - <C-w>w
map _ <C-w>W

let mapleader = ","
let nmapleader = ","

nnoremap <cr> @q

noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj

nmap <Leader>ve :e $HOME/.vim/.vimrc<CR>
nmap <Leader>vs :source $HOME/.vim/.vimrc<CR>
nmap <Leader>q :bd<CR>
nmap <Leader>w :wa<CR>
nmap <Leader>t :Require!<CR>:RunTests<CR>
nmap <Leader>c :cd %:p:h<CR>:pwd<CR>

let g:sql_type_default = 'pgsql'

" vim-rooter
let g:rooter_targets = 'neverrunvimrooterautomatically'

" vim-gitgutter
set updatetime=250

" incsearch.vim
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
" :h g:incsearch#auto_nohlsearch
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" fzf.vim
nmap ;a :Rooter<CR>:Ag 
nmap ;l :Lines<CR>
nmap ;b :Buffers<CR>
nmap ;t :Tags<CR>
nmap ;f :Files<CR>
nmap ;g :lcd %:p:h<CR>:GFiles<CR>
