#!/usr/bin/env bash cd "$HOME/dotfiles"
bat prompt/README.md
stow --no-folding prompt
brew install starship
