#!/usr/bin/env bash
set -v
set -e

# This script requires a user with sudo priviliges to set up dependencies with homebrew

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until bootstrap has finished
# while true; do
# 	sudo -n true
# 	sleep 100
# 	kill -0 "$$" || exit
# done 2>/dev/null &

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

# Backup files
# ===
cd "$HOME"

date=$(date -Iseconds)
if test -d "$HOME/dotfiles"; then
  mv $HOME/dotfiles $HOME/dotfiles-$date
fi
if test -d "$HOME/.local"; then
  mv $HOME/.local $HOME/.local-$date
fi
if test -d "$HOME/.config"; then
  mv $HOME/.config $HOME/.config-$date
fi
if test -f "$HOME/.profile"; then
  mv $HOME/.profile $HOME/.profile-$date
fi

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
eval "$(/opt/homebrew/bin/brew shellenv)"

echo $REPO
echo $dotfilesRepoDir
echo $PATH

# Install updates
# ===
softwareupdate --install-rosetta --agree-to-license
/opt/homebrew/bin/brew update

# Install Core dependencies
# ===
/opt/homebrew/bin/brew install \
  git \
  stow \
  cmake

git clone $REPO $dotfilesRepoDir

# System Setup
# ===
cd $dotfilesRepoDir
source $dotfilesRepoDir/mac/setup.mac.sh
source $dotfilesRepoDir/homebrew/setup.mac.sh
source $dotfilesRepoDir/git/setup.mac.sh
source $dotfilesRepoDir/stow/setup.mac.sh
# source $dotfilesRepoDir/asdf/setup.mac.sh
# source $dotfilesRepoDir/clipboard/setup.mac.sh

# Terminal environment
# ===
cd $dotfilesRepoDir
source $dotfilesRepoDir/zsh/setup.mac.sh
source $dotfilesRepoDir/tmux/setup.mac.sh
source $dotfilesRepoDir/fonts/setup.mac.sh
source $dotfilesRepoDir/prompt/setup.mac.sh
source $dotfilesRepoDir/cron/setup.mac.sh

# My CLI Tools
# ===
cd $dotfilesRepoDir
source $dotfilesRepoDir/bin/setup.sh
#
# # Homebrew CLI Tools
# # ===
cd $dotfilesRepoDir
source $dotfilesRepoDir/fzf/setup.mac.sh
source $dotfilesRepoDir/bat/setup.mac.sh
source $dotfilesRepoDir/lsd/setup.mac.sh
source $dotfilesRepoDir/ripgrep/setup.mac.sh
source $dotfilesRepoDir/fd/setup.mac.sh
source $dotfilesRepoDir/sd/setup.mac.sh
# source $dotfilesRepoDir/mprocs/setup.mac.sh || true
# source $dotfilesRepoDir/lazygit/setup.mac.sh || true
# source $dotfilesRepoDir/jq/setup.mac.sh || true
# source $dotfilesRepoDir/youtube-dl/setup.mac.sh || true
# source $dotfilesRepoDir/bpytop/setup.mac.sh || true
# source $dotfilesRepoDir/cowsay/setup.mac.sh || true
# source $dotfilesRepoDir/neofetch/setup.mac.sh || true
# source $dotfilesRepoDir/wget/setup.mac.sh || true
# source $dotfilesRepoDir/ag/setup.mac.sh || true
# source $dotfilesRepoDir/vim/setup.mac.sh || true
# source $dotfilesRepoDir/asciiquarium/setup.mac.sh || true
# source $dotfilesRepoDir/entr/setup.mac.sh || true
# source $dotfilesRepoDir/vifm/setup.mac.sh || true
# source $dotfilesRepoDir/htop/setup.mac.sh || true
# source $dotfilesRepoDir/pandoc/setup.mac.sh || true
# source $dotfilesRepoDir/w3m/setup.mac.sh || true
# source $dotfilesRepoDir/watch/setup.mac.sh || true
# source $dotfilesRepoDir/ffmpeg/setup.mac.sh || true
# source $dotfilesRepoDir/imagemagick/setup.mac.sh || true
# source $dotfilesRepoDir/ranger/setup.mac.sh || true
# source $dotfilesRepoDir/nmap/setup.mac.sh || true
# source $dotfilesRepoDir/lolcat/setup.mac.sh || true
# source $dotfilesRepoDir/gum/setup.mac.sh || true

# # Programming Languages
# # ===
# cd $dotfilesRepoDir
# source $dotfilesRepoDir/nodejs/setup.sh || true
# source $dotfilesRepoDir/lua/setup.mac.sh || true
# source $dotfilesRepoDir/python/setup.sh || true
# source $dotfilesRepoDir/golang/setup.sh || true
# source $dotfilesRepoDir/rust/setup.sh || true
# source $dotfilesRepoDir/shfmt/setup.mac.sh || true
#
# # Neovim
# # ===
# cd $dotfilesRepoDir
# source $dotfilesRepoDir/neovim/setup.mac.sh || true
#
#
# # Containers
# # ===
# source $dotfilesRepoDir/docker/setup.mac.sh || true
# source $dotfilesRepoDir/kubernetes/setup.mac.sh || true
#
# # Databases
# # ===
# source $dotfilesRepoDir/dbeaver/setup.mac.sh || true
# source $dotfilesRepoDir/sqlite/setup.mac.sh || true
# source $dotfilesRepoDir/postgres/setup.mac.sh || true
#
# # Homebrew Apps
# # ===
# source $dotfilesRepoDir/iterm/setup.mac.sh || true
# source $dotfilesRepoDir/mpv/setup.mac.sh || true
# source $dotfilesRepoDir/vlc/setup.mac.sh || true
# source $dotfilesRepoDir/obsidian/setup.mac.sh || true
# source $dotfilesRepoDir/vscodium/setup.mac.sh || true
# source $dotfilesRepoDir/keepass/setup.mac.sh || true
# source $dotfilesRepoDir/1password/setup.mac.sh || true
# source $dotfilesRepoDir/virtualbox/setup.mac.sh || true
#
# # Browsers
# # ===
# source $dotfilesRepoDir/chromium/setup.mac.sh || true
# source $dotfilesRepoDir/firefox/setup.mac.sh || true
# source $dotfilesRepoDir/vivaldi/setup.mac.sh || true
# source $dotfilesRepoDir/opera/setup.mac.sh || true
#
# # source $dotfilesRepoDir/svn/setup.mac.sh || true
# # source $dotfilesRepoDir/github/setup.mac.sh || true
# # source $dotfilesRepoDir/spectacle/setup.mac.sh || true
# # source $dotfilesRepoDir/vagrant/setup.mac.sh || true
# # source $dotfilesRepoDir/julia/setup.mac.sh || true
# # source $dotfilesRepoDir/wiki/setup.mac.sh || true
# # source $dotfilesRepoDir/tf2/setup.mac.sh || true
# # source $dotfilesRepoDir/spotify/setup.mac.sh || true
# echo "DONE!"
