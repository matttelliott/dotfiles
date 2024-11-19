#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat zoxide/README.md
brew install zoxide
stow --no-folding zoxide
exit 0
