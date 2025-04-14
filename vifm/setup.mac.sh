#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat vifm/README.md
brew install vifm
stow --no-folding vifm
