#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat htop/README.md
stow --no-folding htop
brew install htop
exit 0
