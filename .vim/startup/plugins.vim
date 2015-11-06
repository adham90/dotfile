call plug#begin('~/.vim/plugged')

"===== search ======
Plug 'mileszs/ack.vim'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-abolish'
Plug 'Shougo/vimfiler.vim'


"===== Git =========
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'mattn/Gist-vim'
Plug 'gregsexton/gitv'
Plug 'tpope/vim-git'

"===== Ruby ========
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-endwise'
Plug 'bruno-/vim-ruby-fold'
Plug 't9md/vim-ruby-xmpfilter'
Plug 'tpope/vim-bundler'
Plug 'sunaku/vim-ruby-minitest'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'slim-template/slim-rails'
Plug 'kana/vim-vspec'
Plug 'thoughtbot/vim-rspec'
Plug 'rhysd/vim-vspec-matchers'
Plug 'rubycomplete.vim'

Plug 'kchmck/vim-coffee-script'
"dark colour scheme for Vim & gVim
Plug 'w0ng/vim-hybrid'
"Vim Markdown runtime files
Plug 'tpope/vim-markdown'
"This plugin started out as a set of personal mappings
Plug 'tpope/vim-ragtag'
"Is all about surroundings: parentheses, brackets, quotes, XML tags, and more.
Plug 'tpope/vim-surround'
"improves HTML & CSS workflow
Plug 'mattn/emmet-vim'
"Vim script for text filtering and alignment
Plug 'godlygeek/tabular'
"Send command from vim to a running tmux session
Plug 'jgdavey/tslime.vim'
"Vim runtime files for Haml, Sass, and SCSS
Plug 'tpope/vim-haml'
"plugin for intensely orgasmic commenting
Plug 'The-NERD-Commenter'
"Fold markdown documents by section.
Plug 'nelstrom/vim-markdown-folding'
"extended % matching for HTML, LaTeX, and many other languages
Plug 'matchit.zip'
"plugin to display the indention levels with thin vertical lines
Plug 'Yggdroot/indentLine'
"Syntax highlighting for VIM
Plug 'slim-template/vim-slim'
"Create your own text objects
Plug 'kana/vim-textobj-user'
"A light and configurable statusline/tabline for Vim
Plug 'itchyny/lightline.vim'
"A vim plugin that simplifies the transition between multiline and single-line code
Plug 'AndrewRadev/splitjoin.vim'
"A simple, easy-to-use Vim alignment plugin.
Plug 'junegunn/vim-easy-align'
"Plug to move lines and selections up and down
Plug 'matze/vim-move'
"Delete all vim buffers but the current one.
Plug 'BufOnly.vim'

Plug 'Shougo/unite.vim'
Plug 'Shougo/vimshell.vim'
Plug 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }


"====== ColorScheme ======
Plug 'guns/jellyx.vim'
Plug 'gosukiwi/vim-atom-dark'
Plug 'chriskempson/vim-tomorrow-theme'

"======== AutoComplete =======
Plug 'Shougo/neocomplete.vim'
"Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()


