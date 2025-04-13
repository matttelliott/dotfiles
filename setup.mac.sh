#!/usr/bin/env bash
set -v
set -e

# This script requires a user with sudo priviliges to set up dependencies with homebrew

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until bootstrap has finished
while true; do
	sudo -n true
	sleep 100
	kill -0 "$$" || exit
done 2>/dev/null &


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

echo $REPO
echo $dotfilesRepoDir
echo $PATH
#
# # Install updates
# # ===
# sudo softwareupdate --install-rosetta --agree-to-license
# brew update
#
#
# # Install Core dependencies
# # ===
# brew install \
#   git \
#   stow \
#   cmake
#
# git clone $REPO $dotfilesRepoDir
#
#
# cd $dotfilesRepoDir
#
# # System Setup
# # ===
# ./mac/setup.mac.sh || true
# ./homebrew/setup.mac.sh || true
# ./git/setup.mac.sh || true
# ./stow/setup.mac.sh || true
# ./asdf/setup.mac.sh || true
# # ./clipboard/setup.mac.sh || true
#
# # Terminal environment
# # ===
# cd $dotfilesRepoDir
# ./iterm/setup.mac.sh || true
# ./zsh/setup.mac.sh || true
# ./fonts/setup.mac.sh || true
# ./prompt/setup.mac.sh || true
# ./gum/setup.mac.sh || true
# ./tmux/setup.mac.sh || true
# ./cron/setup.mac.sh || true
#
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
# # My CLI Tools
# # ===
# cd $dotfilesRepoDir
# ./bin/setup.sh || true
#
# # Homebrew CLI Tools
# # ===
# cd $dotfilesRepoDir
# ./bat/setup.mac.sh || true
# alias cat=bat
# ./mprocs/setup.mac.sh || true
# ./zoxide/setup.mac.sh || true
# ./lsd/setup.mac.sh || true
# ./ripgrep/setup.mac.sh || true
# ./fd/setup.mac.sh || true
# ./sd/setup.mac.sh || true
# ./fzf/setup.mac.sh || true
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
#
# # Homebrew Apps
# # ===
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
