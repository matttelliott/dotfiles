#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat asdf/README.md
stow --no-folding asdf
brew install asdf
exit 0
