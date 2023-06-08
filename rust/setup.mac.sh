#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat rust/README.md
stow --no-folding rust
brew install rust
