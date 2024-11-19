#!/usr/bin/env bash

set -v
# This script requires a user with sudo priviliges to set up dependencies with homebrew


dotfilesRepoDir="$HOME/dotfiles"

# check environment and set global env var
if [ $(sw_vers -productName) = 'macOS' ]; then
  echo 'macOS dotfiles setup';
else
  echo 'Error: Running macOS dotfiles setup on non-macOS device.';
  exit 1
fi


REPO=https://github.com/matttelliott/dotfiles
curl $REPO/-/raw/master/WARNING.md | cat

# Because Git submodule commands cannot operate without a work tree, they must
# be run from within $HOME (assuming this is the root of your dotfiles)
cd "$HOME"

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until bootstrap has finished
while true; do
	sudo -n true
	sleep 10
	kill -0 "$$" || exit
done 2>/dev/null &

# Backup files
# ===
cd "$HOME"

date=$(date -Iseconds)
mv $HOME/dotfiles $HOME/dotfiles-$date
mv $HOME/.local $HOME/.local-$date
mv $HOME/.config $HOME/.config-$date
mv $HOME/.profile $HOME/.profile-$date
for file in $(ls -lash | awk '{ print $10 }' | grep '^.z' | grep -v '\d\d\d\d-\d\d-\d\d'); do
	mv $HOME/$file $HOME/$file-$date
done
for file in $(ls -lash | awk '{ print $10 }' | grep '^.bash' | grep -v '\d\d\d\d-\d\d-\d\d'); do
	mv $HOME/$file $HOME/$file-$date
done

# Install homebrew package manager
# ===
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
export PATH=$PATH:/opt/homebrew/bin

echo $REPO
echo $dotfilesRepoDir
echo $PATH

# Install updates
# ===
sudo softwareupdate --install-rosetta --agree-to-license
brew update


# Install Core dependencies
# ===
brew install \
  git \
  stow \
  cmake

git clone $REPO $dotfilesRepoDir


cd $dotfilesRepoDir

# System Setup
# ===
bash mac/setup.mac.sh
bash homebrew/setup.mac.sh
bash git/setup.mac.sh
bash stow/setup.mac.sh
bash asdf/setup.mac.sh
# bash clipboard/setup.mac.sh

# Terminal environment
# ===
cd $dotfilesRepoDir
bash iterm/setup.mac.sh
bash zsh/setup.mac.sh
bash fonts/setup.mac.sh
bash prompt/setup.mac.sh
bash gum/setup.mac.sh
bash tmux/setup.mac.sh
bash cron/setup.mac.sh

# Programming Languages
# ===
cd $dotfilesRepoDir
bash nodejs/setup.sh
bash lua/setup.mac.sh
bash python/setup.sh
bash golang/setup.sh
bash rust/setup.sh
bash shfmt/setup.mac.sh


# Neovim
# ===
cd $dotfilesRepoDir
bash neovim/setup.mac.sh


echo 'installed neovim/setup.mac.sh'

# Containers
# ===
bash docker/setup.mac.sh
bash kubernetes/setup.mac.sh

# Databases
# ===
bash sqlite/setup.mac.sh
bash postgres/setup.mac.sh

# My CLI Tools
# ===
cd $dotfilesRepoDir
bash bin/setup.sh

# Homebrew CLI Tools
# ===
cd $dotfilesRepoDir
bash bat/setup.mac.sh
alias cat=bat
bash mprocs/setup.mac.sh
bash zoxide/setup.mac.sh
bash lsd/setup.mac.sh
bash ripgrep/setup.mac.sh
bash fd/setup.mac.sh
bash sd/setup.mac.sh
bash fzf/setup.mac.sh
bash lazygit/setup.mac.sh
bash jq/setup.mac.sh
bash youtube-dl/setup.mac.sh
bash bpytop/setup.mac.sh
bash cowsay/setup.mac.sh
bash neofetch/setup.mac.sh
bash wget/setup.mac.sh
bash ag/setup.mac.sh
bash vim/setup.mac.sh
bash asciiquarium/setup.mac.sh
bash entr/setup.mac.sh
bash vifm/setup.mac.sh
bash htop/setup.mac.sh
bash pandoc/setup.mac.sh
bash w3m/setup.mac.sh
bash watch/setup.mac.sh
bash ffmpeg/setup.mac.sh
bash imagemagick/setup.mac.sh
bash ranger/setup.mac.sh
bash nmap/setup.mac.sh
bash lolcat/setup.mac.sh

# # bash svn/setup.mac.sh
# # bash github/setup.mac.sh
#
# bash 1password/setup.mac.sh
# bash spectacle/setup.mac.sh
#
#
# bash mpv/setup.mac.sh
# bash vlc/setup.mac.sh
# bash obsidian/setup.mac.sh
# bash vscodium/setup.mac.sh
#
# bash chromium/setup.mac.sh
# bash firefox/setup.mac.sh
# bash vivaldi/setup.mac.sh
# bash opera/setup.mac.sh
#
# # bash virtualbox/setup.mac.sh
# # bash vagrant/setup.mac.sh
#
#
# ## Manual Install
# # bash julia/setup.mac.sh
# bash wiki/setup.mac.sh
# # bash tf2/setup.mac.sh
# # bash spotify/setup.mac.sh
echo "DONE!"
