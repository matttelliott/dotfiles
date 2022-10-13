#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat watch/README.md
brew install watch
stow watch
