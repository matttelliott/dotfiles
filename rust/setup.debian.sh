#!/usr/bin/env bash
cd "$HOME/dotfiles"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"
rustup +stable component add rust-analyzer-preview
cargo install irust
cargo install bacon
cargo install cargo-info
stow rust
