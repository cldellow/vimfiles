runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on
filetype plugin indent on

colorscheme jellybeans
set number
set list listchars=tab:»·,trail:·

map <space> <C-f>
map <backspace> <C-b>
map - <C-w>w
map _ <C-w>W

let mapleader = ","
let nmapleader = ","

nmap <Leader>ve :e $HOME/.vim/.vimrc<CR>
nmap <Leader>vs :source $HOME/.vim/.vimrc<CR>
nmap <Leader>q :bd<CR>
nmap <Leader>w :wa<CR>

nmap <Leader>c :cd %:p:h<CR>:pwd<CR>
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
