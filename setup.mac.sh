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
  echo 'macOS dotfiles setup'
else
  echo 'Error: Running macOS dotfiles setup on non-macOS device.'
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
bash $dotfilesRepoDir/mac/setup.mac.sh
bash $dotfilesRepoDir/homebrew/setup.mac.sh
bash $dotfilesRepoDir/git/setup.mac.sh
bash $dotfilesRepoDir/stow/setup.mac.sh
# bash $dotfilesRepoDir/asdf/setup.mac.sh
# bash $dotfilesRepoDir/clipboard/setup.mac.sh

# Terminal environment
# ===
cd $dotfilesRepoDir
bash $dotfilesRepoDir/zsh/setup.mac.sh
bash $dotfilesRepoDir/tmux/setup.mac.sh
bash $dotfilesRepoDir/fonts/setup.mac.sh
bash $dotfilesRepoDir/prompt/setup.mac.sh
bash $dotfilesRepoDir/cron/setup.mac.sh

# My CLI Tools
# ===
cd $dotfilesRepoDir
bash $dotfilesRepoDir/bin/setup.sh
#
# # Homebrew CLI Tools
# # ===
cd $dotfilesRepoDir
bash $dotfilesRepoDir/fzf/setup.mac.sh
bash $dotfilesRepoDir/bat/setup.mac.sh
bash $dotfilesRepoDir/lsd/setup.mac.sh
bash $dotfilesRepoDir/ripgrep/setup.mac.sh
bash $dotfilesRepoDir/fd/setup.mac.sh
bash $dotfilesRepoDir/sd/setup.mac.sh
bash $dotfilesRepoDir/mprocs/setup.mac.sh
bash $dotfilesRepoDir/lazygit/setup.mac.sh
bash $dotfilesRepoDir/jq/setup.mac.sh
bash $dotfilesRepoDir/youtube-dl/setup.mac.sh
bash $dotfilesRepoDir/bpytop/setup.mac.sh
bash $dotfilesRepoDir/cowsay/setup.mac.sh
bash $dotfilesRepoDir/neofetch/setup.mac.sh
bash $dotfilesRepoDir/wget/setup.mac.sh
bash $dotfilesRepoDir/asciiquarium/setup.mac.sh
bash $dotfilesRepoDir/entr/setup.mac.sh
bash $dotfilesRepoDir/vifm/setup.mac.sh
bash $dotfilesRepoDir/htop/setup.mac.sh
bash $dotfilesRepoDir/pandoc/setup.mac.sh
bash $dotfilesRepoDir/w3m/setup.mac.sh
bash $dotfilesRepoDir/watch/setup.mac.sh
bash $dotfilesRepoDir/ffmpeg/setup.mac.sh
bash $dotfilesRepoDir/imagemagick/setup.mac.sh
bash $dotfilesRepoDir/ranger/setup.mac.sh
bash $dotfilesRepoDir/nmap/setup.mac.sh
bash $dotfilesRepoDir/lolcat/setup.mac.sh
bash $dotfilesRepoDir/gum/setup.mac.sh
# bash $dotfilesRepoDir/ag/setup.mac.sh

# Neovim
# ===
cd $dotfilesRepoDir
bash $dotfilesRepoDir/neovim/setup.mac.sh

# Programming Languages
# ===
cd $dotfilesRepoDir
# bash $dotfilesRepoDir/lua/setup.mac.sh
# bash $dotfilesRepoDir/nodejs/setup.sh
# bash $dotfilesRepoDir/python/setup.sh
# bash $dotfilesRepoDir/golang/setup.sh
# bash $dotfilesRepoDir/rust/setup.sh
# bash $dotfilesRepoDir/shfmt/setup.mac.sh
#
#
#
# # Containers
# # ===
# bash $dotfilesRepoDir/docker/setup.mac.sh
# bash $dotfilesRepoDir/kubernetes/setup.mac.sh
#
# # Databases
# # ===
# bash $dotfilesRepoDir/dbeaver/setup.mac.sh
# bash $dotfilesRepoDir/sqlite/setup.mac.sh
# bash $dotfilesRepoDir/postgres/setup.mac.sh

# Homebrew Apps
# ===
bash $dotfilesRepoDir/iterm/setup.mac.sh
bash $dotfilesRepoDir/mpv/setup.mac.sh
bash $dotfilesRepoDir/vlc/setup.mac.sh
bash $dotfilesRepoDir/obsidian/setup.mac.sh
bash $dotfilesRepoDir/vscodium/setup.mac.sh
bash $dotfilesRepoDir/keepass/setup.mac.sh
bash $dotfilesRepoDir/1password/setup.mac.sh
bash $dotfilesRepoDir/virtualbox/setup.mac.sh
#
# # Browsers
# # ===
# bash $dotfilesRepoDir/chromium/setup.mac.sh
# bash $dotfilesRepoDir/firefox/setup.mac.sh
# bash $dotfilesRepoDir/vivaldi/setup.mac.sh
# bash $dotfilesRepoDir/opera/setup.mac.sh
#
# # bash $dotfilesRepoDir/svn/setup.mac.sh
# # bash $dotfilesRepoDir/github/setup.mac.sh
# # bash $dotfilesRepoDir/spectacle/setup.mac.sh
# # bash $dotfilesRepoDir/vagrant/setup.mac.sh
# # bash $dotfilesRepoDir/julia/setup.mac.sh
# # bash $dotfilesRepoDir/wiki/setup.mac.sh
# # bash $dotfilesRepoDir/tf2/setup.mac.sh
# # bash $dotfilesRepoDir/spotify/setup.mac.sh
echo "DONE!"
