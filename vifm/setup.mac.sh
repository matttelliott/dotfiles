#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat vifm/README.md
stow --no-folding vifm
brew install vifm
