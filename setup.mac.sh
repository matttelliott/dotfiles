#!/usr/bin/env bash

# Because Git submodule commands cannot operate without a work tree, they must
# be run from within $HOME (assuming this is the root of your dotfiles)
cd "$HOME"

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until bootstrap has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install dependencies rosetta, homebrew, stow, and git
sudo softwareupdate --install-rosetta --agree-to-license
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
brew install git
brew install stow
# clone main repo
git clone https://gitlab.com/matttelliott/dotfiles-stow.git dotfiles
cd dotfiles
# run setup scripts
bash homebrew/setup.mac.sh
bash git/setup.mac.sh
bash stow/setup.mac.sh
bash neovim/setup.mac.sh
bash tmux/setup.mac.sh
bash zsh/setup.mac.sh
