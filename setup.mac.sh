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
./mac/setup.mac.sh
./homebrew/setup.mac.sh
./git/setup.mac.sh
./stow/setup.mac.sh
# ./asdf/setup.mac.sh
# ./clipboard/setup.mac.sh

# Terminal environment
# ===
cd $dotfilesRepoDir
./zsh/setup.mac.sh
./tmux/setup.mac.sh
./fonts/setup.mac.sh
./prompt/setup.mac.sh
./cron/setup.mac.sh

# My CLI Tools
# ===
cd $dotfilesRepoDir
./bin/setup.sh
#
# # Homebrew CLI Tools
# # ===
cd $dotfilesRepoDir
./fzf/setup.mac.sh
./bat/setup.mac.sh
./lsd/setup.mac.sh
./ripgrep/setup.mac.sh
./fd/setup.mac.sh
./sd/setup.mac.sh
# ./mprocs/setup.mac.sh || true
# ./lazygit/setup.mac.sh || true
# ./jq/setup.mac.sh || true
# ./youtube-dl/setup.mac.sh || true
# ./bpytop/setup.mac.sh || true
# ./cowsay/setup.mac.sh || true
# ./neofetch/setup.mac.sh || true
# ./wget/setup.mac.sh || true
# ./ag/setup.mac.sh || true
# ./vim/setup.mac.sh || true
# ./asciiquarium/setup.mac.sh || true
# ./entr/setup.mac.sh || true
# ./vifm/setup.mac.sh || true
# ./htop/setup.mac.sh || true
# ./pandoc/setup.mac.sh || true
# ./w3m/setup.mac.sh || true
# ./watch/setup.mac.sh || true
# ./ffmpeg/setup.mac.sh || true
# ./imagemagick/setup.mac.sh || true
# ./ranger/setup.mac.sh || true
# ./nmap/setup.mac.sh || true
# ./lolcat/setup.mac.sh || true
# ./gum/setup.mac.sh || true

# # Programming Languages
# # ===
# cd $dotfilesRepoDir
# ./nodejs/setup.sh || true
# ./lua/setup.mac.sh || true
# ./python/setup.sh || true
# ./golang/setup.sh || true
# ./rust/setup.sh || true
# ./shfmt/setup.mac.sh || true
#
# # Neovim
# # ===
# cd $dotfilesRepoDir
# ./neovim/setup.mac.sh || true
#
#
# # Containers
# # ===
# ./docker/setup.mac.sh || true
# ./kubernetes/setup.mac.sh || true
#
# # Databases
# # ===
# ./dbeaver/setup.mac.sh || true
# ./sqlite/setup.mac.sh || true
# ./postgres/setup.mac.sh || true
#
# # Homebrew Apps
# # ===
# ./iterm/setup.mac.sh || true
# ./mpv/setup.mac.sh || true
# ./vlc/setup.mac.sh || true
# ./obsidian/setup.mac.sh || true
# ./vscodium/setup.mac.sh || true
# ./keepass/setup.mac.sh || true
# ./1password/setup.mac.sh || true
# ./virtualbox/setup.mac.sh || true
#
# # Browsers
# # ===
# ./chromium/setup.mac.sh || true
# ./firefox/setup.mac.sh || true
# ./vivaldi/setup.mac.sh || true
# ./opera/setup.mac.sh || true
#
# # ./svn/setup.mac.sh || true
# # ./github/setup.mac.sh || true
# # ./spectacle/setup.mac.sh || true
# # ./vagrant/setup.mac.sh || true
# # ./julia/setup.mac.sh || true
# # ./wiki/setup.mac.sh || true
# # ./tf2/setup.mac.sh || true
# # ./spotify/setup.mac.sh || true
# echo "DONE!"
