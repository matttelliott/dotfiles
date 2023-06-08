#!/usr/bin/env bash
# https://github.com/unixorn/awesome-zsh-plugins
cd "$HOME/dotfiles"
sudo apt install -y zsh
sudo chsh -s $(which zsh) $(whoami)
rm -rf $HOME/.zshenv
rm -rf $HOME/.zshrc
stow --no-folding zsh
