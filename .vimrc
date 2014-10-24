"shitty config by ty-po

set number

set cindent
set smartindent
set autoindent

set expandtab

syntax on



set wildmenu
set showcmd
set hlsearch

set ignorecase
set smartcase

set autoindent
set nostartofline

set ruler
set confirm

set visualbell
set t_vb=

"set mouse=a

set cmdheight=2



set backspace=indent,eol,start


autocmd FileType c setlocal expandtab
autocmd FileType h setlocal expandtab

autocmd filetype cpp setlocal expandtab
autocmd filetype hpp setlocal expandtab


autocmd filetype hs setlocal expandtab
autocmd filetype elm setlocal expandtab

"notification for col 80  
"set colorcolumn=80
"highlight ColorColumn ctermbg=darkgrey
"method 2
highlight OverLength ctermbg=lightgrey ctermfg=black guibg=#592929
match OverLength /\%80v.\+/


set tabstop=2
set softtabstop=2
set shiftwidth=2 
