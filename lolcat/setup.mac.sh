#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat lolcat/README.md
stow --no-folding lolcat
brew install lolcat
