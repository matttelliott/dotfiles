#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat asdf/README.md
stow --no-folding asdf
brew install asdf
