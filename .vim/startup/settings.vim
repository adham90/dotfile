let mapleader = ","

let g:ycm_auto_trigger = 0
let g:pymode_rope_lookup_project = 0
let g:markdown_fenced_languages = ['coffee', 'css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'xml', 'html'] " Specific configurations
" Stop NERDTree opening when vim starts
let g:NERDTreeHijackNetrw=0
let NERDTreeQuitOnOpen=1
let g:move_key_modifier = 'C'

set background=dark
set t_Co=256
set autoindent
set backspace=indent,eol,start
set colorcolumn=80
set cursorline
set encoding=utf-8
set fileencoding=utf-8
set gdefault
set guifont=Inconsolata\ 10.5
set guioptions-=Be
set guioptions=aAc
set hlsearch
set ignorecase
set incsearch
set list
set listchars=tab:▸\ ,eol:¬,nbsp:⋅,trail:•
set noswapfile
set number
set shell=/bin/bash
set showmatch
set smartcase
"set smartindent
set term=screen-256color
set ts=2 sts=2 sw=2 expandtab
set winheight=999
set winheight=5
set winminheight=5
set winwidth=84
set foldlevel=99
set paste
set statusline=%1*[%{GetName()}]\
set statusline+=%<pwd:%{getcwd()}\
set statusline+=%2*%{&modified?'\[+]':''}%*
set statusline+=%{IsHelp()}
set statusline+=%{&readonly?'\ (ro)\ ':''}
set statusline+=[
set statusline+=%{strlen(&fenc)?&fenc:'none'}\|
set statusline+=%{&ff}\|
set statusline+=%{strlen(&ft)?&ft:'<none>'}
set statusline+=]\
set statusline+=%=
set statusline+=c%c
set statusline+=,l%l
set statusline+=/%L\
set shell=zsh
set laststatus=2
set relativenumber

" ======== Autocommands ==========
autocmd BufWritePre *.rb :%s/\s\+$//e " auto remove trailing whitespace in ruby files
".ru files are Ruby.
au BufRead,BufNewFile *.ru set filetype=ruby
au BufRead,BufNewFile [vV]agrantfile set filetype=ruby
" Markdown gets auto textwidth
au Bufread,BufNewFile *.md set filetype=markdown textwidth=79
au Bufread,BufNewFile *.markdown set textwidth=79
" ============================
au Bufread,BufNewFile *.feature set filetype=cucumber " .feature files are Cucumber.
