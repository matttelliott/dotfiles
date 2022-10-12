#!/usr/bin/env bash

REPO=https://gitlab.com/matttelliott/dotfiles-stow.git

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

echo '********************Setup Dependencies********************'
sudo softwareupdate --install-rosetta --agree-to-license
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
export PATH=$PATH:/opt/homebrew/bin

brew update
brew tap homebrew/cask-versions

brew install git
brew install svn
brew install stow

mv $HOME/dotfiles $HOME/dotfiles-$(date -I seconds)
git clone $REPO dotfiles
cd dotfiles

bash git/setup.mac.sh
bash stow/setup.mac.sh
bash homebrew/setup.mac.sh
bash svn/setup.mac.sh

echo '********************Setup Languages********************'
bash node/setup.mac.sh
bash python/setup.mac.sh
bash ruby/setup.mac.sh
bash rust/setup.mac.sh
bash golang/setup.mac.sh
bash php/setup.mac.sh

echo '********************Setup Environment********************'
bash zsh/setup.mac.sh
bash fonts/setup.mac.sh
bash prompt/setup.mac.sh
bash tmux/setup.mac.sh
bash neovim/setup.mac.sh
bash vim/setup.mac.sh
bash mac/setup.mac.sh
bash iterm/setup.mac.sh

# bash spotify/setup.mac.sh

# echo '********************Setup CLI Tools********************'
bash wget/setup.mac.sh
bash ag/setup.mac.sh
bash ripgrep/setup.mac.sh
bash sqlite/setup.mac.sh
bash postgres/setup.mac.sh
# bash entr/setup.mac.sh
# bash ffmpeg/setup.mac.sh
bash fzf/setup.mac.sh
bash shfmt/setup.mac.sh
bash lazygit/setup.mac.sh
# bash ranger/setup.mac.sh
# bash vifm/setup.mac.sh
bash htop/setup.mac.sh
bash jq/setup.mac.sh
# bash pandoc/setup.mac.sh
# bash w3m/setup.mac.sh
# bash watch/setup.mac.sh
bash youtube-dl/setup.mac.sh

# echo '********************Setup GUI Tools********************'
# bash mpv/setup.mac.sh
# bash vlc/setup.mac.sh
# bash obsidian/setup.mac.sh
# bash vscodium/setup.mac.sh

# echo '********************Setup Browsers********************'
# bash chromium/setup.mac.sh
# bash firefox/setup.mac.sh
# bash vivaldi/setup.mac.sh
# bash opera/setup.mac.sh

# echo '********************Setup Virtualization********************'
# bash virtualbox/setup.mac.sh
# bash vagrant/setup.mac.sh

# echo '********************Setup Containers********************'
# bash docker/setup.mac.sh
# bash kubernetes/setup.mac.sh
# # bash nix/setup.mac.sh # come back to this later
