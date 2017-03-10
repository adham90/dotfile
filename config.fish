# Put system-wide fish configuration entries here
# or in .fish files in conf.d/
# Files in conf.d can be overridden by the user
# by files with the same name in $XDG_CONFIG_HOME/fish/conf.d

# This file is run by all fish instances.
# To include configuration only for login shells, use
# if status --is-login
#    ...
# end
# To include configuration only for interactive shells, use
# if status --is-interactive
#   ...
# end

# set -x GOPATH ~/work/goworkspace
set -x GOPATH $HOME/work/goworkspace
set -x PATH $PATH /usr/lib/go/bin $GOPATHS/bin /usr/local/bin ~/.npm-global/bin
alias tmux "tmux -2"
alias popcorn "cd ~/Downloads/popcorn-desktop/; gulp run"
alias ssh-testing "ssh ubuntu@testing.eventtus.com"
alias v "nvim"
alias so "source ~/.config/fish/config.fish"

# eventtus
alias eventtus "cd ~/work/eventtus"
alias core "cd ~/work/eventtus/core/"
alias manager "cd ~/work/eventtus/manager"
alias admin "cd ~/work/eventtus/admin"

function fco -d "Fuzzy-find and checkout a branch"
  git branch --all | grep -v HEAD | string trim | fzf | xargs git checkout --track
end

function fcoc -d "Fuzzy-find and checkout a commit"
  git log --pretty=oneline --abbrev-commit --reverse | fzf +s | xargs git checkout
end

# function fssh -d "Fuzzy-find ssh host and ssh into it"
#   ag '^host [^*]' ~/.ssh/config | cut -d ' ' -f 2 | fzf | xargs ssh -t -t
# end
