#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat dbeaver/README.md
brew install dbeaver-community
stow --no-folding dbeaver
