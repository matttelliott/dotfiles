#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat asciiquarium/README.md
stow --no-folding asciiquarium
brew install asciiquarium
exit 0
