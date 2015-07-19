#!/usr/bin/env ruby

class String
  def black;          "\033[30m#{self}\033[0m" end
  def red;            "\033[31m#{self}\033[0m" end
  def green;          "\033[32m#{self}\033[0m" end
  def brown;          "\033[33m#{self}\033[0m" end
  def blue;           "\033[34m#{self}\033[0m" end
  def magenta;        "\033[35m#{self}\033[0m" end
  def cyan;           "\033[36m#{self}\033[0m" end
  def gray;           "\033[37m#{self}\033[0m" end
  def bg_black;       "\033[40m#{self}\033[0m" end
  def bg_red;         "\033[41m#{self}\033[0m" end
  def bg_green;       "\033[42m#{self}\033[0m" end
  def bg_brown;       "\033[43m#{self}\033[0m" end
  def bg_blue;        "\033[44m#{self}\033[0m" end
  def bg_magenta;     "\033[45m#{self}\033[0m" end
  def bg_cyan;        "\033[46m#{self}\033[0m" end
  def bg_gray;        "\033[47m#{self}\033[0m" end
  def bold;           "\033[1m#{self}\033[22m" end
  def reverse_color;  "\033[7m#{self}\033[27m" end
end

# root
def whoami_root(cmd)
  if `#{cmd}`.strip.chomp != 'root'
    $stderr.puts $run_as_root_msg || 'You need to be root to run this script.'.bold.bg_red
    exit $run_as_root_exit_code || 1
  end
end

['/usr/bin/whoami', '/bin/whoami'].each do |w|
  if File.exist? w
    whoami_root w
  end
end
####

# Var
dotfile = Dir.pwd.to_s
wm      = "1"
shell   = "1"
#####

# Func
def l(log)
  puts "> #{log}".reverse_color
end

def q(qs)
  print "? #{qs}: ".bg_blue
end

def i(info)
  puts "! #{info}".bg_green.black
end

def what_wm
  q "Do you want install i3wm(1) or awesomeWM(2) default(1)"
  wm = gets.chmod
end

def what_shell
  q "What shell to install fish(1) or zsh(2) default(1)"
  shell = gets.chmod
end

def install
  begin
    what_wm
  end while wm == "1" || wm == "2"

  begin
    what_shell
  end while shell == "1" || shell == "2"


  l "Installing dependencies"
  exec("pacman -S --noconfirm python-pip python2-pip")

  if exec("which curl") != "/usr/bin/curl"
    exec("pacman -S --noconfirm curl")
  end

  l "Installing the WM..."
  if wm == "1"
    exec("pacman -S --noconfirm i3")
  else
    exec("pacman -S --noconfirm awesome")
  end

  l "Installing the shell..."
  if shell == "1"
    exec("pacman -S --noconfirm fish")
    exec("chsh -s /usr/bin/fish")
    exec("curl -L https://github.com/oh-my-fish/oh-my-fish/raw/master/tools/install.fish | fish")
    exec("echo \"exec fish\" > ~/.bashrc")
  else
    exec("pacman -S --noconfirm zsh")
    exec("chsh -s /usr/bin/zsh")
    exec("curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh")
  end

  l "Install other software..."
  exec("pacman -S --noconfirm vim ranger termite")
  exec("yaourt -S --noconfirm neovim-git")
  exec("yaourt -S --noconfirm qutebrowser-git")
end

def config
  l "Applying the dotfiles"
  if wm == "1"
    l "Config i3..."
    exec("cp -R #{dotfile}/i3 ~")
    exec("cp #{dotfile}/i3status.conf ~/.i3status.conf")
    exec("echo 'exec i3' > ~/.xinitrc")
  else
    l "Config awesome..."
    exec("cp -R #{dotfile}/awesome ~/.config")
    exec("echo 'exec awesome' > ~/.xinitrc")
  end

  if shell == "1"
    l "Config oh my fish"
    exec("cp #{dotfile}/config.fish ~/.config/fish/config.fish")
  else
    l "Config oh my zsh"
    exec("cp #{dotfile}/zshrc ~/.zshrc")
  end

  l "Config vim"
  exec("cp #{dotfile}/vimrc ~/.vimrc")
  l "Config neovim"
  exec("cp #{dotfile}/nvimrc ~/.nvimrc")
  l "Config Xresources"
  exec("cp #{dotfile}/Xresources ~/.Xresources")
  l "Config ranger"
  exec("cp -R #{dotfile}/ranger ~/.config")
  exec("cp -R #{dotfile}/ranger /root/.config")
  l "Config termite"
  exec("cp -R #{dotfile}/termite ~/.config")
  exec("cp #{dotfile}/bash_profile ~/.bach_profile")
end
#####

def start
end

begin
  i "This script will install [vim, nvim, i3wm or awesome wm, ranger fm, termite, qutebrowser]"
  q "Press (y) to Continue or (n) to exit"
  ok = gets.to_s.chomp
  exit if ok == "n"
end until ok == "y"

l "Updating..."
exec("pacman -Syu --noconfirm")

install

config

l "Installation finished successfully. no error reported"
