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
"Plugin 'airblade/vim-gitgutter'
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
"A vim plugin that simplifies the transition between multiline and single-line code
Plugin 'AndrewRadev/splitjoin.vim'
"A simple, easy-to-use Vim alignment plugin.
Plugin 'junegunn/vim-easy-align'
"Slim templates generator for Rails 3 and 4
Plugin 'slim-template/slim-rails'
"Plugin to move lines and selections up and down
Plugin 'matze/vim-move'
" Track the engine.
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

"Color Scheme
Plugin 'guns/jellyx.vim'
Plugin 'gosukiwi/vim-atom-dark'
Plugin 'chriskempson/vim-tomorrow-theme'

call vundle#end()
