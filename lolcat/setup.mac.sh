#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat lolcat/README.md
brew install lolcat || true
stow --no-folding lolcat
