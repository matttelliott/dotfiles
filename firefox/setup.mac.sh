#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat firefox/README.md
brew install firefox
brew install firefox-developer-edition
brew install firefox-nightly
brew install librewolf
stow --no-folding firefox
