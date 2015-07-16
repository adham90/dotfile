set nocompatible
filetype on
filetype indent on

" Vundle {{{

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'scrooloose/nerdtree'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-fugitive'
Plugin 'nono/vim-handlebars'
Plugin 'w0ng/vim-hybrid'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-ragtag'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'SirVer/ultisnips'
Plugin 'airblade/vim-gitgutter'
Plugin 'godlygeek/tabular'
Plugin 'jceb/vim-orgmode'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-endwise'
Bundle 'thoughtbot/vim-rspec'
Bundle 'jgdavey/tslime.vim'
Plugin 'tpope/vim-haml'
Plugin 'ervandew/supertab'
Plugin 'The-NERD-Commenter'
Plugin 'nelstrom/vim-markdown-folding'
Plugin 'bruno-/vim-ruby-fold'
Plugin 'matchit.zip'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Yggdroot/indentLine'
Plugin 't9md/vim-ruby-xmpfilter'
Plugin 'tpope/vim-bundler'
Plugin 'slim-template/vim-slim'
Plugin 'sunaku/vim-ruby-minitest'
Plugin 'rhysd/vim-vspec-matchers'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'itchyny/lightline.vim'
" Color Scheme
Plugin 'guns/jellyx.vim'

call vundle#end()

" }}}

set term=screen-256color
let mapleader = ","
syntax enable
colorscheme jellyx
set background=dark

" Mappings {{{

" Insert mode mappings {{{
inoremap <C-l> <space>=><space>
inoremap <C-s> <Esc>:w<CR>a
" }}}

" Normal mode mappings {{{
nnoremap <C-s> :w<CR>
nnoremap <leader>ev :vs $MYVIMRC<CR>
nnoremap <leader>gs :Gstatus<CR><C-W>15+
nnoremap <leader>m :NERDTreeToggle<CR>
"nnoremap <leader>rs :!clear;bundle exec rake<CR>
"nnoremap <leader>a :Ack 
nnoremap <leader>d :bd<CR> 
nnoremap <leader>w :w<CR>
nnoremap <leader><cr> :noh<CR>
nnoremap <leader>ls :ls<CR>:b
"nnoremap <leader>t :CtrlP<CR>
nnoremap n nzz
nnoremap N Nzz

" vim-rspec mappings
nnoremap <Leader>t :call RunCurrentSpecFile()<CR>
nnoremap <Leader>s :call RunNearestSpec()<CR>
nnoremap <Leader>l :call RunLastSpec()<CR>
nnoremap <Leader>rs :call RunAllSpecs()<CR>
nnoremap <Leader>a :A<CR>

" }}}

" Visual mode mappings {{{
vnoremap < <gv
vnoremap > >gv

" Execute dot in the selection
vnoremap . :norm.<CR>
" }}}

" }}}

" General settings {{{
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
" }}}

" Autocommands {{{

" auto remove trailing whitespace in ruby files
autocmd BufWritePre *.rb :%s/\s\+$//e

".ru files are Ruby.
au BufRead,BufNewFile *.ru set filetype=ruby
au BufRead,BufNewFile [vV]agrantfile set filetype=ruby

" Markdown gets auto textwidth
au Bufread,BufNewFile *.md set filetype=markdown textwidth=79
au Bufread,BufNewFile *.markdown set textwidth=79

" .feature files are Cucumber.
au Bufread,BufNewFile *.feature set filetype=cucumber
" }}}

" Statusline {{{
hi User1 ctermbg=white    ctermfg=black   guibg=#89A1A1 guifg=#002B36
hi User2 ctermbg=red      ctermfg=white   guibg=#aa0000 guifg=#89a1a1

function! GetCWD()
  return expand(":pwd")
endfunction

function! IsHelp()
  return &buftype=='help'?' (help) ':''
endfunction

function! GetName()
  return expand("%:t")==''?'<none>':expand("%:t")
endfunction

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

" }}}

" Specific configurations {{{
let g:markdown_fenced_languages = ['coffee', 'css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'xml', 'html']

" Stop NERDTree opening when vim starts
let g:NERDTreeHijackNetrw=0
let NERDTreeQuitOnOpen=1
" }}}

" vim: foldmethod=marker foldmarker={{{,}}}
