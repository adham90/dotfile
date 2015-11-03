set nocompatible
filetype on
filetype indent on

" Vundle {{{

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
"TextMate-style snippets for Vim
"Plugin 'msanders/snipmate.vim'
"This plugin will allow you to run ack from vim, and shows the results in a split window. 
Plugin 'mileszs/ack.vim'
"Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
Plugin 'kien/ctrlp.vim'
"Ruby on Rails power tools
Plugin 'tpope/vim-rails'
"it's like rails.vim without the rails
Plugin 'tpope/vim-rake'
"A tree explorer plugin for vim.
Plugin 'scrooloose/nerdtree'
"CoffeeScript support for vim
Plugin 'kchmck/vim-coffee-script'
"Git wrapper
Plugin 'tpope/vim-fugitive'
"dark colour scheme for Vim & gVim
Plugin 'w0ng/vim-hybrid'
"Vim Markdown runtime files
Plugin 'tpope/vim-markdown'
"This plugin started out as a set of personal mappings
Plugin 'tpope/vim-ragtag'
"Vim configuration files for editing and compiling Ruby within Vim.
Plugin 'vim-ruby/vim-ruby'
"Is all about surroundings: parentheses, brackets, quotes, XML tags, and more.
Plugin 'tpope/vim-surround'
"improves HTML & CSS workflow
Plugin 'mattn/emmet-vim'
"A Vim plugin which shows a git diff in the gutter (sign column) and stages/reverts hunks.
Plugin 'airblade/vim-gitgutter'
"Vim script for text filtering and alignment
Plugin 'godlygeek/tabular'
"A code-completion engine for Vim
Plugin 'Valloric/YouCompleteMe'
"add 'end' in ruby, endfunction/endif/more in vim script, etc
Plugin 'tpope/vim-endwise'
"Run Rspec specs from Vim
Bundle 'thoughtbot/vim-rspec'
"Send command from vim to a running tmux session
Bundle 'jgdavey/tslime.vim'
"Vim runtime files for Haml, Sass, and SCSS
Plugin 'tpope/vim-haml'
"Perform all your vim insert mode completions with Tab
Plugin 'ervandew/supertab'
"plugin for intensely orgasmic commenting
Plugin 'The-NERD-Commenter'
"Fold markdown documents by section.
Plugin 'nelstrom/vim-markdown-folding'
"simple folding for ruby and rspec files
Plugin 'bruno-/vim-ruby-fold'
"extended % matching for HTML, LaTeX, and many other languages
Plugin 'matchit.zip'
"Plugin 'scrooloose/nerdcommenter'
"plugin to display the indention levels with thin vertical lines
Plugin 'Yggdroot/indentLine'
"helper for ruby's xmpfilter or seeing_is_believing
Plugin 't9md/vim-ruby-xmpfilter'
"Lightweight support for Ruby's Bundler
Plugin 'tpope/vim-bundler'
"Syntax highlighting for VIM
Plugin 'slim-template/vim-slim'
"Vim highlighting & completion for MiniTest.
Plugin 'sunaku/vim-ruby-minitest'
"testing framework for Vim script.
Plugin 'kana/vim-vspec'
"custom matchers for vim-vspec, a testing framework for Vim
Plugin 'rhysd/vim-vspec-matchers'
"Create your own text objects
Plugin 'kana/vim-textobj-user'
"A custom text object for selecting ruby blocks.
Plugin 'nelstrom/vim-textobj-rubyblock'
"A light and configurable statusline/tabline for Vim
Plugin 'itchyny/lightline.vim'
"Simple tmux statusline generator with support for powerline symbols and vim/airline/lightline statusline integration
"Plugin 'edkolev/tmuxline.vim'
"Color Scheme
Plugin 'guns/jellyx.vim'
"A vim plugin that simplifies the transition between multiline and single-line code
Plugin 'AndrewRadev/splitjoin.vim'
"A simple, easy-to-use Vim alignment plugin.
Plugin 'junegunn/vim-easy-align'
"Slim templates generator for Rails 3 and 4
Plugin 'slim-template/slim-rails'

Plugin 'gosukiwi/vim-atom-dark'

Plugin 'chriskempson/vim-tomorrow-theme'

"Plugin to move lines and selections up and down
Plugin 'matze/vim-move'

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'


let g:move_key_modifier = 'C'

call vundle#end()

" }}}

colorscheme Tomorrow-Night
"colorscheme jellyx
"set term=screen-251color
let mapleader = ","
syntax enable
set background=dark

" Mappings {{{
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

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
nnoremap <leader>a :Ack
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
let g:ycm_auto_trigger = 0
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
let g:pymode_rope_lookup_project = 0
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
