#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
source ~/.profile
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
eval "$(rbenv init -)"
