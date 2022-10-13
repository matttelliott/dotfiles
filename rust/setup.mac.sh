#!/usr/bin/env bash
echo "********************Setup Rust********************"
cd "$HOME/dotfiles"
bat rust/README.md
stow rust
brew install rust
cargo install stylua
