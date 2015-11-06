let mapleader = ","

"================================
" neocomplete
"================================
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_camel_case = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#max_list = 5
let g:neocomplete#auto_completion_start_length = 3
let g:neocomplete#force_overwrite_completefunc = 1
if !exists('g:neocomplete#keyword_patterns')
  let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
"================================

let g:pymode_rope_lookup_project = 0
let g:markdown_fenced_languages = ['coffee', 'css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'xml', 'html'] " Specific configurations
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
set smartindent
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

"========================================
" Autocommands
"========================================
autocmd BufWritePre *.rb :%s/\s\+$//e " auto remove trailing whitespace in ruby files
au BufRead,BufNewFile *.ru set filetype=ruby
au BufRead,BufNewFile [vV]agrantfile set filetype=ruby
au Bufread,BufNewFile *.md set filetype=markdown textwidth=79
au Bufread,BufNewFile *.markdown set textwidth=79
au Bufread,BufNewFile *.feature set filetype=cucumber " .feature files are Cucumber.
"========================================

"========================================
" BACKUP / TMP FILES
"========================================
if isdirectory($HOME . '/.vim/backup') == 0
	:silent !mkdir -p ~/.vim/backup >/dev/null 2>&1
endif
set backupdir-=.
set backupdir+=.
set backupdir-=~/
set backupdir^=~/.vim/backup/
set backupdir^=./.vim-backup/
set backup
if isdirectory($HOME . '/.vim/swap') == 0
	:silent !mkdir -p ~/.vim/swap >/dev/null 2>&1
endif
set directory=./.vim-swap//
set directory+=~/.vim/swap//
set directory+=~/tmp//
set directory+=.
"========================================

"========================================
" stores the state of previous session
"========================================
set viminfo+=n~/.vim/viminfo
if exists("+undofile")
	if isdirectory($HOME . '/.vim/undo') == 0
		:silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
	endif
	set undodir=./.vim-undo//
	set undodir+=~/.vim/undo//
	set undofile
endif
"========================================


" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
inoremap <S-Tab> <c-n>

