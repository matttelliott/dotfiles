#!/usr/bin/env bash
# https://github.com/unixorn/awesome-zsh-plugins
cd "$HOME/dotfiles"
sudo apt install -y zsh
sudo chsh -s $(which zsh) $(whoami)
mkdir $HOME/zsh/
rm ~/.zshenv
stow zsh
