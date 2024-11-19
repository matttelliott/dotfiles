#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat virtualbox/README.md
stow --no-folding virtualbox || true
brew install virtualbox
