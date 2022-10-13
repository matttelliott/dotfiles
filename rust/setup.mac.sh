#!/usr/bin/env bash
cd "$HOME/dotfiles"
bat rust/README.md
stow rust
brew install rust
cargo install stylua
