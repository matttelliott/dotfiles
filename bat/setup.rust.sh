#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat bat/README.md
cargo install bat
alias cat=bat
stow bat
