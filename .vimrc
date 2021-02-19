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

set directory=/home/cldellow/.vimswp//


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
nmap <Leader>t :Require!<CR>:RunTests<CR>
nmap <Leader>c :cd %:p:h<CR>:pwd<CR>

let g:sql_type_default = 'pgsql'

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
nmap ;l :Lines<CR>
nmap ;b :Buffers<CR>
nmap ;t :Tags<CR>
nmap ;f :Files<CR>
nmap ;g :lcd %:p:h<CR>:GFiles<CR>

function! CycleThroughChars()
    let x_contents = getreg("x")
    let x_type = getregtype("x")
    let lists = [ ["a","à","â","ä","a"],
                \ ["A","À","Â","Ä","A"],
                \ ["e","é","è","ê","ë","e"],
                \ ["E","É","Ê","È","Ë","E"],
                \ ["i","î","ï","i"],
                \ ["I","Î","Ï","I"],
                \ ["o","ô","ö","o"],
                \ ["O","Ô","Ö","O"],
                \ ["u","û","ù","ü","u"],
                \ [" ","(","_","j"," "],
                \ ["U","Û","Ù","Ü","U"] ]
    sil exe 'normal! "xyl'
    let c_char = @x
    for this_list in lists
        let c_index = index(this_list,c_char)
        if c_index != -1
            sil exe "normal! r" . this_list[c_index+1]
            break
        endif
    endfor
    call setreg("x",x_contents,x_type)
    startinsert
endfunction
noremap <silent> <F12> <ESC>:call CycleThroughChars()<CR><ESC><right>
