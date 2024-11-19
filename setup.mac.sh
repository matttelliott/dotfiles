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

# Because Git submodule commands cannot operate without a work tree, they must
# be run from within $HOME (assuming this is the root of your dotfiles)
cd "$HOME"

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until bootstrap has finished
# while true; do
# 	sudo -n true
# 	sleep 100
# 	kill -0 "$$" || exit
# done 2>/dev/null &

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
source mac/setup.mac.sh
source homebrew/setup.mac.sh
source git/setup.mac.sh
source stow/setup.mac.sh
source asdf/setup.mac.sh
# source clipboard/setup.mac.sh

# Terminal environment
# ===
cd $dotfilesRepoDir
source iterm/setup.mac.sh
source zsh/setup.mac.sh
source fonts/setup.mac.sh
source prompt/setup.mac.sh
source gum/setup.mac.sh
source tmux/setup.mac.sh
source cron/setup.mac.sh

# Programming Languages
# ===
cd $dotfilesRepoDir
source nodejs/setup.sh
source lua/setup.mac.sh
source python/setup.sh
source golang/setup.sh
source rust/setup.sh
source shfmt/setup.mac.sh


# Neovim
# ===
cd $dotfilesRepoDir
source neovim/setup.mac.sh


# Containers
# ===
source docker/setup.mac.sh
source kubernetes/setup.mac.sh

# Databases
# ===
source sqlite/setup.mac.sh
source postgres/setup.mac.sh

# My CLI Tools
# ===
cd $dotfilesRepoDir
source bin/setup.sh

# Homebrew CLI Tools
# ===
cd $dotfilesRepoDir
source bat/setup.mac.sh
alias cat=bat
source mprocs/setup.mac.sh
source zoxide/setup.mac.sh
source lsd/setup.mac.sh
source ripgrep/setup.mac.sh
source fd/setup.mac.sh
source sd/setup.mac.sh
source fzf/setup.mac.sh
source lazygit/setup.mac.sh
source jq/setup.mac.sh
source youtube-dl/setup.mac.sh
source bpytop/setup.mac.sh
source cowsay/setup.mac.sh
source neofetch/setup.mac.sh
source wget/setup.mac.sh
source ag/setup.mac.sh
source vim/setup.mac.sh
source asciiquarium/setup.mac.sh
source entr/setup.mac.sh
source vifm/setup.mac.sh
source htop/setup.mac.sh
source pandoc/setup.mac.sh
source w3m/setup.mac.sh
source watch/setup.mac.sh
source ffmpeg/setup.mac.sh
source imagemagick/setup.mac.sh
source ranger/setup.mac.sh
source nmap/setup.mac.sh
source lolcat/setup.mac.sh

# Homebrew Apps
# ===
source mpv/setup.mac.sh
source vlc/setup.mac.sh
source obsidian/setup.mac.sh
source vscodium/setup.mac.sh
source keepass/setup.mac.sh
source 1password/setup.mac.sh
source virtualbox/setup.mac.sh

# Browsers
# ===
source chromium/setup.mac.sh
source firefox/setup.mac.sh
source vivaldi/setup.mac.sh
source opera/setup.mac.sh

# source svn/setup.mac.sh
# source github/setup.mac.sh
# source spectacle/setup.mac.sh
# source vagrant/setup.mac.sh
# source julia/setup.mac.sh
# source wiki/setup.mac.sh
# source tf2/setup.mac.sh
# source spotify/setup.mac.sh
echo "DONE!"
