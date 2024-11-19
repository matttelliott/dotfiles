#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat htop/README.md
brew install htop || true
stow --no-folding htop
