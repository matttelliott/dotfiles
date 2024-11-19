#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat clipboard/README.md
stow --no-folding clipboard
