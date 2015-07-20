#!/bin/bash

HOME=$(eval echo ~${SUDO_USER})
DOT=$(dirname $(readlink -f $0))

echo "This script will install [vim, nvim, i3wm or awesome wm, ranger fm, termite, qutebrowser], Do you want to continue?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) break;;
        No ) exit;;
    esac
done

sudo su -c whoami

echo "Updating..."
pacman -Syu --noconfirm

echo "Installing dependencies"
pacman -S --noconfirm python-pip python2-pip

echo "What is your favorite WM?"
select yn in "i3wm" "awesome_wm"; do
  case $yn in
    i3wm )
      pacman -S --noconfirm i3
      cp -R $DOT/i3 ~
      cp $DOT/i3status.conf ~/.i3status.conf
      echo 'exec i3' > $HOME/.xinitrc
    break;;

    awesome_wm )
      pacman -S --noconfirm awesome
      cp -R $DOT/awesome $HOME/.config
      echo 'exec awesome' > $HOME/.xinitrc
    break;;
  esac
done

echo "What is your favorite Shell?"
select yn in "fish" "zsh"; do
  case $yn in
    fish )
      pacman -S --noconfirm fish
      chsh -s /usr/bin/fish
      curl -L https://github.com/oh-my-fish/oh-my-fish/raw/master/tools/install.fish | fish
      echo "exec fish" > $HOME/.bashrc
    break;;

    zsh )
      pacman -S --noconfirm zsh
      chsh -s /usr/bin/zsh
      curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
    break;;
  esac
done

pacman -S --noconfirm vim ranger termite
yaourt -S --noconfirm neovim-git
yaourt -S --noconfirm qutebrowser-git

cp $DOT/vimrc $HOME/.vimrc
cp $DOT/nvimrc $HOME/.nvimrc
cp $DOT/Xresources $HOME/.Xresources
cp -R $DOT/ranger $HOME/.config
cp -R $DOT/ranger /root/.config
cp -R $DOT/termite $HOME/.config
cp $DOT/bash_profile $HOME/.bach_profile
