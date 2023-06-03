#!/usr/bin/env nu
cd "$HOME/dotfiles"
cat bat/README.md
cargo install bat
stow bat
