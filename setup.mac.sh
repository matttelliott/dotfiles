#!/usr/bin/env bash

# Install rosetta, homebrew, and git
sudo softwareupdate --install-rosetta
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install git
# clone main repo
git clone https://gitlab.com/matttelliott/dotfiles-stow.git dotfiles
cd dotfiles
# run setup scripts
bash homebrew/setup.mac.sh
bash git/setup.mac.sh
bash neovim/setup.mac.sh
bash tmux/setup.mac.sh
bash zsh/setup.mac.sh
