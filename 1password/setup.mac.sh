#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat 1password/README.md
brew install 1password
brew install 1password-cli
stow --no-folding 1password
