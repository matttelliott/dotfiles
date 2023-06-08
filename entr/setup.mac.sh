#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat entr/README.md
stow --no-folding entr
brew install entr
