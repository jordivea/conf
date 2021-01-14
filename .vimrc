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
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'tpope/vim-fugitive'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
" ...


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
nnoremap <silent> <F2> :NERDTreeToggle /users/jordi/<CR>

let python_highlight_all=1
syntax on

let g:NERDTreeNodeDelimiter = "\u00a0"
syntax on

set backspace=indent,eol,start
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
nnoremap <space> zo

set encoding=utf-8

colorscheme spacecamp

au BufNewFile,BufRead *.py
\ set tabstop=4 |
\ set softtabstop=4 |
\ set shiftwidth=4 |
\ set textwidth=79 |
\ set expandtab |
\ set autoindent |
\ set fileformat=unix

autocmd FileType python map <buffer> <F3> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F3> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
