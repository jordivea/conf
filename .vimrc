set hidden                                                              " don't unload buffer when switching away
set number                                                              " show line number
highlight LineNr ctermfg=3                                              " line number color
autocmd FileType python,sh,yaml,php,c,cpp,java setlocal colorcolumn=80  " highlight column 80 for python,sh,yaml,php,c,cpp,java files
highlight ColorColumn ctermbg=7                                         " column 80 background color
set hlsearch incsearch ignorecase smartcase                             " search
set showmatch                                                           " show matching parentheses, brackets and braces
set scrolloff=10                                                        " scroll the window so we can always see 10 lines around the cursor
autocmd BufWritePre *.py,*.sh,*.php,*.yml,*.c,*.cpp,*.java :%s/\s\+$//e " on save, trim trailing whitespaces for python,sh,yaml,php,c,cpp,java files
