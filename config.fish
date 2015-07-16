set --erase fish_greeting

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
Plugin 'rvm'
Plugin 'ssh'
Plugin 'sublime'
Plugin 'gem'
Plugin 'fry'
Plugin 'fish-spec'
Plugin 'bundler'
Plugin 'ccache'
Plugin 'archlinux'
Plugin 'jump'
Plugin 'tiny'
Plugin 'extract'
Plugin 'gi'
Plugin 'peco'
Plugin 'msg'
Plugin 'xdg'

alias e="emacs -nw"
alias v="vim"
alias vi="vim ."
