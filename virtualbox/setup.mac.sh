#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat virtualbox/README.md
brew install virtualbox
stow --no-folding virtualbox
