#!/usr/bin/env bash

# This script requires a user with sudo priviliges to set up dependencies with homebrew


dotfilesRepoDir="$HOME/dotfiles"

# check environment and set global env var
if [ $(sw_vers -productName) = 'macOS' ]; then
  echo 'macOS dotfiles setup';
else
  echo 'Error: Running macOS dotfiles setup on non-macOS device.';
  exit 1
fi


REPO=https://gitlab.com/matttelliott/dotfiles-stow
curl $REPO/-/raw/master/WARNING.md | cat

# Because Git submodule commands cannot operate without a work tree, they must
# be run from within $HOME (assuming this is the root of your dotfiles)
cd "$HOME"

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until bootstrap has finished
while true; do
	sudo -n true
	sleep 60
	kill -0 "$$" || exit
done 2>/dev/null &

# Backup files
# ===
cd "$HOME"

date=$(date -I seconds)
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


# sudo chown -R $(whoami) /usr/local/var/homebrew

# cd $HOME
# git clone https://github.com/Homebrew/brew.git
# mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew
# ./brew/bin/brew tap homebrew/core
# export PATH=$HOME/brew/bin:$PATH >> ~/.zshrc # or ~/.bashrc
# exec $SHELL
# which brew # see that brew is found in your path


# Install updates
# ===
sudo softwareupdate --install-rosetta --agree-to-license
brew tap homebrew/cask-versions
brew update


# Install Core dependencies
# ===
brew install \
  git \
  stow \
  cmake

bash homebrew/setup.mac.sh
bash git/setup.mac.sh
bash stow/setup.mac.sh

# Clone Repo
# ===
git clone $REPO $dotfilesRepoDir
cd $HOME/dotfiles

# Homebrew CLI tools
# ===

# Rust
cd $dotfilesRepoDir
bash rust/setup.sh
source "$HOME/.cargo/env"
export PATH=$PATH:$HOME/.cargo/bin

# Terminal environment
# ===
bash zsh/setup.mac.sh
bash fonts/setup.mac.sh
bash prompt/setup.mac.sh

# RTX Language Manager
bash rtx-cli/setup.sh
eval "$(rtx activate bash)"

# Golang
bash golang/setup.sh
eval "$(rtx hook-env)"
export PATH=$PATH:$HOME/go/bin
go install github.com/charmbracelet/gum@latest
gum style  --foreground 212 --border-foreground 212 --border double --align center --width 50 --margin "1 2" --padding "2 4" 'Bubble Gum (1¢)' 'So sweet and so fresh!'

# Other Languages
bash nodejs/setup.sh
bash python/setup.sh
# bash lua/setup.sh
# bash ruby/setup.sh
# bash php/setup.sh

eval "$(rtx hook-env)"

# Neovim
# ===
cd $dotfilesRepoDir
bash neovim/setup.sh
# Rust CLI Apps
# ===
cd $dotfilesRepoDir
bash bat/setup.sh
alias cat=bat
bash zellij/setup.sh
bash mprocs/setup.sh
bash gitui/setup.sh
bash zoxide/setup.sh
bash lsd/setup.sh
bash exa/setup.sh
bash ripgrep/setup.sh
bash fd/setup.sh
bash sd/setup.sh
bash nushell/setup.sh

# GO CLI Apps
# ===
cd $dotfilesRepoDir
bash fzf/setup.sh
bash lazygit/setup.sh
bash jq/setup.sh
bash gum/setup.sh
bash shfmt/setup.debian.sh

# Python CLI Apps
# ===
cd $dotfilesRepoDir
bash youtube-dl/setup.sh
bash bpytop/setup.sh
bash cowsay/setup.sh

# My CLI Apps
# ===
cd $dotfilesRepoDir
bash bin/setup.sh


# bash svn/setup.mac.sh
# bash tmux/setup.mac.sh
# bash cron/setup.mac.sh

# bash wget/setup.mac.sh
# bash trash/setup.mac.sh
# bash clipboard/setup.mac.sh
# bash ag/setup.mac.sh
# bash vim/setup.mac.sh
# bash neofetch/setup.mac.sh
# bash github/setup.mac.sh


bash sqlite/setup.mac.sh
bash postgres/setup.mac.sh

bash mac/setup.mac.sh
bash iterm/setup.mac.sh
bash 1password/setup.mac.sh
bash spectacle/setup.mac.sh

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

bash mpv/setup.mac.sh
bash vlc/setup.mac.sh
bash obsidian/setup.mac.sh
bash vscodium/setup.mac.sh

bash chromium/setup.mac.sh
bash firefox/setup.mac.sh
bash vivaldi/setup.mac.sh
bash opera/setup.mac.sh

# bash virtualbox/setup.mac.sh
# bash vagrant/setup.mac.sh
bash docker/setup.mac.sh
bash kubernetes/setup.mac.sh


## Manual Install
# bash julia/setup.mac.sh
bash wiki/setup.mac.sh
# bash tf2/setup.mac.sh
bash spotify/setup.mac.sh
echo "DONE!"
