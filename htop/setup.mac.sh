#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat htop/README.md
brew install htop
stow --no-folding htop
