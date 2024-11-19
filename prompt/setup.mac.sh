#!/usr/bin/env bash cd "$HOME/dotfiles"
cat prompt/README.md
brew install starship
stow --no-folding prompt
exit 0
