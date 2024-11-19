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
source mac/setup.mac.sh || true
source homebrew/setup.mac.sh || true
source git/setup.mac.sh || true
source stow/setup.mac.sh || true
source asdf/setup.mac.sh || true
# source clipboard/setup.mac.sh || true

# Terminal environment
# ===
cd $dotfilesRepoDir
source iterm/setup.mac.sh || true
source zsh/setup.mac.sh || true
source fonts/setup.mac.sh || true
source prompt/setup.mac.sh || true
source gum/setup.mac.sh || true
source tmux/setup.mac.sh || true
source cron/setup.mac.sh || true

# Programming Languages
# ===
cd $dotfilesRepoDir
source nodejs/setup.sh || true
source lua/setup.mac.sh || true
source python/setup.sh || true
source golang/setup.sh || true
source rust/setup.sh || true
source shfmt/setup.mac.sh || true


# Neovim
# ===
cd $dotfilesRepoDir
source neovim/setup.mac.sh || true


# Containers
# ===
source docker/setup.mac.sh || true
source kubernetes/setup.mac.sh || true

# Databases
# ===
source sqlite/setup.mac.sh || true
source postgres/setup.mac.sh || true

# My CLI Tools
# ===
cd $dotfilesRepoDir
source bin/setup.sh || true

# Homebrew CLI Tools
# ===
cd $dotfilesRepoDir
source bat/setup.mac.sh || true
alias cat=bat
source mprocs/setup.mac.sh || true
source zoxide/setup.mac.sh || true
source lsd/setup.mac.sh || true
source ripgrep/setup.mac.sh || true
source fd/setup.mac.sh || true
source sd/setup.mac.sh || true
source fzf/setup.mac.sh || true
source lazygit/setup.mac.sh || true
source jq/setup.mac.sh || true
source youtube-dl/setup.mac.sh || true
source bpytop/setup.mac.sh || true
source cowsay/setup.mac.sh || true
source neofetch/setup.mac.sh || true
source wget/setup.mac.sh || true
source ag/setup.mac.sh || true
source vim/setup.mac.sh || true
source asciiquarium/setup.mac.sh || true
source entr/setup.mac.sh || true
source vifm/setup.mac.sh || true
source htop/setup.mac.sh || true
source pandoc/setup.mac.sh || true
source w3m/setup.mac.sh || true
source watch/setup.mac.sh || true
source ffmpeg/setup.mac.sh || true
source imagemagick/setup.mac.sh || true
source ranger/setup.mac.sh || true
source nmap/setup.mac.sh || true
source lolcat/setup.mac.sh || true

# Homebrew Apps
# ===
source mpv/setup.mac.sh || true
source vlc/setup.mac.sh || true
source obsidian/setup.mac.sh || true
source vscodium/setup.mac.sh || true
source keepass/setup.mac.sh || true
source 1password/setup.mac.sh || true
source virtualbox/setup.mac.sh || true

# Browsers
# ===
source chromium/setup.mac.sh || true
source firefox/setup.mac.sh || true
source vivaldi/setup.mac.sh || true
source opera/setup.mac.sh || true

# source svn/setup.mac.sh || true
# source github/setup.mac.sh || true
# source spectacle/setup.mac.sh || true
# source vagrant/setup.mac.sh || true
# source julia/setup.mac.sh || true
# source wiki/setup.mac.sh || true
# source tf2/setup.mac.sh || true
# source spotify/setup.mac.sh || true
echo "DONE!"
