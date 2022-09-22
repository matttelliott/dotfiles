#!/usr/bin/env bash

# Install dependencies rosetta, homebrew, stow, and git
sudo softwareupdate --install-rosetta --agree-to-license
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
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
