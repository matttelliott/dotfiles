#!/usr/bin/env bash
cd "$HOME/dotfiles"
echo "********************Setup Rust********************"
bat rust/README.md
stow rust
brew install rust
cargo install stylua
