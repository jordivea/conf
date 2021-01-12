set hidden                                                              " don't unload buffer when switching away
set number                                                              " show line number
highlight LineNr ctermfg=3                                              " line number color
autocmd FileType python,sh,yaml,php,c,cpp,java setlocal colorcolumn=80  " highlight column 80 for python,sh,yaml,php,c,cpp,java files
highlight ColorColumn ctermbg=7                                         " column 80 background color
set hlsearch incsearch ignorecase smartcase                             " search
set showmatch                                                           " show matching parentheses, brackets and braces
set scrolloff=10                                                        " scroll the window so we can always see 10 lines around the cursor
autocmd BufWritePre *.py,*.sh,*.php,*.yml,*.c,*.cpp,*.java :%s/\s\+$//e " on save, trim trailing whitespaces for python,sh,yaml,php,c,cpp,java files


set nocompatible              " required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
Plugin 'preservim/nerdtree'
Plugin 'jaredgorski/spacecamp'
Plugin 'jiangmiao/auto-pairs'

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
nnoremap <silent> <F2> :NERDTreeToggle /Users/tommasodeponti/Desktop/<CR>

let g:NERDTreeNodeDelimiter = "\u00a0"
syntax on
set backspace=indent,eol,start
"split navigations
autocmd FileType python map <buffer> <F3> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F3> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
colorscheme spacecamp

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
