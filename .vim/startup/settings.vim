let mapleader = ","
"================================
" neocomplete
"================================
let g:neocomplete#enable_at_startup = 1 
let g:neocomplete#enable_auto_delimiter = 1
let g:neocomplete#enable_auto_close_preview = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_auto_select = 1

imap <expr><silent><tab> neocomplete#mappings#close_popup() .
      \ "<Plug>(neosnippet_jump_or_expand)"
"================================

let g:pymode_rope_lookup_project = 0
let g:markdown_fenced_languages = ['coffee', 'css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'xml', 'html'] " Specific configurations
let g:move_key_modifier = 'C'

"========================================
" General
"========================================
set cursorline
set encoding=utf-8
set fileencoding=utf-8
set gdefault
set list
set listchars=tab:▸\ ,eol:¬,nbsp:⋅,trail:•
set noswapfile
set smartindent
set shell=zsh
set relativenumber
set backspace=indent,eol,start   " enable <BS> for everything
set colorcolumn=80               " visual indicator of column
set number                       " Show line numbers
set hidden                       " hide when switching buffers, don't unload
set laststatus=2                 " always show status line
set lazyredraw                   " don't update screen when executing macros
set mouse=a                      " enable mouse in all modes
set nowrap                       " disable word wrap
set showbreak="+++ "             " String to show with wrap lines
set showcmd                      " show command on last line of screen
set showmatch                    " show bracket matches
set textwidth=0                  " don't break lines after some maximum width
set ttyfast                      " increase chars sent to screen for redrawing
set title                        " use filename in window title
set wildmenu                     " enhanced cmd line completion
set wildchar=<TAB>               " key for line completion
set noerrorbells                 " no error sound
set splitright                   " Split new buffer at right
set ts=2 sts=2 sw=2 expandtab
"========================================

"========================================
" Appearance
"========================================
set background=dark
set t_Co=256
set term=screen-256color
set winheight=999
set winheight=5
set winminheight=5
set winwidth=84
colorscheme Tomorrow-Night
syntax enable
"========================================

"========================================
" Folding
"========================================
set foldlevel=99
set foldignore=           " don't ignore anything when folding
set foldlevelstart=99     " no folds closed on open
set foldmethod=marker     " collapse code using markers
set foldnestmax=1         " limit max folds for indent and syntax methods
"========================================

"========================================
" Searches
"========================================
set hlsearch            " highlight search results
set incsearch           " search whilst typing
set ignorecase          " case insensitive searching
set smartcase           " override ignorecase if upper case typed
set more                " Stop in list
"========================================

"========================================
" StatusLine
"========================================
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
hi User1 ctermbg=white    ctermfg=black   guibg=#89A1A1 guifg=#002B36
hi User2 ctermbg=red      ctermfg=white   guibg=#aa0000 guifg=#89a1a1
"========================================

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

"========================================
" Make sure Vim returns to the same line when you reopen a file.
"========================================
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
	augroup END
"========================================

