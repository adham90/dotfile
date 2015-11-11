set --erase fish_greeting

# Path
set --global --export PATH .                     $PATH
set --global --export PATH $HOME/bin             $PATH
set --global --export PATH $HOME/local/bin       $PATH
set --global --export PATH $HOME/.gem/ruby/*/bin $PATH
set --global --export PATH $HOME/.rvm/gems/*/bin $PATH

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

alias v="vim"
alias vrc="vim ~/.vimrc ~/.vim/startup"
alias vi="vim ."
alias code="cd /home/code"
alias wi="sudo wifi-menu"
alias w="mux start $0"

## git aliases
alias l="git log"
alias a="git add ."
alias c="git commit"
alias d="git diff"
alias s="git status"

## rails aliases
alias rs="rails server"
alias rb="bundle"
alias rc="rails console"

## external monitor setup
alias xm="xrandr --output VGA1 --auto --left-of LVDS1"


## show system info with screenfetch
alias sf="screenfetch"
