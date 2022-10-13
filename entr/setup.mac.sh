#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat entr/README.md
stow entr
brew install entr
