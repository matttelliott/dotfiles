#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat asciiquarium/README.md
brew install asciiquarium
stow --no-folding asciiquarium
