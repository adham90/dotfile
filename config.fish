set --erase fish_greeting


set PATH $HOME/.rbenv/bin $PATH
set PATH $HOME/.rbenv/shims $PATH
set PATH $HOME/.rbenv/versions $PATH
rbenv rehash >/dev/null ^&1

# Path
set --global --export PATH .                     $PATH
set --global --export PATH $HOME/bin             $PATH
set --global --export PATH $HOME/local/bin       $PATH
set --global --export PATH $HOME/.gem/ruby/*/bin $PATH

# Libraries
set --global --export PYTHONPATH $HOME/python/*/lib
set --global --export RUBYLIB    $HOME/ruby/*/lib

# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Path to your custom folder (default path is ~/.oh-my-fish/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

set -x EDITOR vim

# Custom plugins and themes may be added to ~/.oh-my-fish/custom
# Plugins and themes can be found at https://github.com/oh-my-fish/
Theme 'l'
Plugin 'theme'
Plugin 'git-flow'
Plugin 'rails'
Plugin 'ssh'
Plugin 'sublime'
Plugin 'gem'
Plugin 'fry'
Plugin 'fish-spec'
Plugin 'ccache'
Plugin 'archlinux'
Plugin 'jump'
Plugin 'tiny'
Plugin 'extract'
Plugin 'gi'
Plugin 'peco'
Plugin 'msg'
Plugin 'xdg'
#Plugin 'rbenv'

alias v="vim"
alias vi="vim ."
alias code="cd /home/code"
alias wi="sudo wifi-menu"
alias w="mux start $0"
