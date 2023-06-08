#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat htop/README.md
stow --no-folding htop
brew install htop
