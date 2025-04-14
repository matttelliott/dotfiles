#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat lolcat/README.md
brew install lolcat
stow --no-folding lolcat
