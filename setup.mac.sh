#!/usr/bin/env bash

REPO=https://gitlab.com/matttelliott/dotfiles-stow.git

# Because Git submodule commands cannot operate without a work tree, they must
# be run from within $HOME (assuming this is the root of your dotfiles)
cd "$HOME"

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until bootstrap has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install dependencies rosetta, nix, stow, and git
sudo softwareupdate --install-rosetta --agree-to-license
sh <(curl -L https://nixos.org/nix/install)
export PATH=$PATH:/nix/var/nix/profiles/default/bin
export PATH=$PATH:$HOME/.nix-profile/bin
brew tap homebrew/cask-versions
brew install git
brew install svn
brew install stow

# clone main repo
git clone $REPO dotfiles
cd dotfiles
# run setup scripts

echo '********************Setup Languages********************'
bash node/setup.mac.sh
bash python/setup.mac.sh
bash ruby/setup.mac.sh
bash rust/setup.mac.sh
bash go/setup.mac.sh
bash php/setup.mac.sh

echo '********************Setup Tools********************'
bash git/setup.mac.sh
bash stow/setup.mac.sh
bash ag/setup.mac.sh
bash ripgrep/setup.mac.sh
bash entr/setup.mac.sh
bash ffmpeg/setup.mac.sh
bash fzf/setup.mac.sh
bash lazygit/setup.mac.sh
bash ranger/setup.mac.sh
bash vifm/setup.mac.sh
bash htop/setup.mac.sh
bash jq/setup.mac.sh
bash pandoc/setup.mac.sh
bash w3m/setup.mac.sh
bash watch/setup.mac.sh
bash youtube-dl/setup.mac.sh
bash mpv/setup.mac.sh
bash vlc/setup.mac.sh
bash obsidian/setup.mac.sh
bash vscodium/setup.mac.sh

echo '********************Setup Environment********************'
bash fonts/setup.mac.sh
bash tmux/setup.mac.sh
bash zsh/setup.mac.sh
bash neovim/setup.mac.sh
bash mac/setup.mac.sh
bash iterm/setup.mac.sh
bash spotify/setup.mac.sh
bash virtualbox/setup.mac.sh
bash vagrant/setup.mac.sh

echo '********************Setup Browsers********************'
bash chromium/setup.mac.sh
bash firefox/setup.mac.sh
bash vivaldi/setup.mac.sh
bash opera/setup.mac.sh

echo '********************Setup Containers********************'
bash docker/setup.mac.sh
bash kubernetes/setup.mac.sh
bash nix/setup.mac.sh
