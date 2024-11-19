#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat lolcat/README.md
stow --no-folding lolcat
brew install lolcat
exit 0
