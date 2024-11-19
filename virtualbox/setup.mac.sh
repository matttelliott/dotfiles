#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat virtualbox/README.md
brew install virtualbox || true
stow --no-folding virtualbox
