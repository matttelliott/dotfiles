#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat firefox/README.md
stow firefox
brew install firefox
brew install firefox-developer-edition
