#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat asciiquarium/README.md
brew install asciiquarium || true
stow --no-folding asciiquarium
