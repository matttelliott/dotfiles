#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat asciiquarium/README.md
stow --no-folding asciiquarium
brew install asciiquarium
