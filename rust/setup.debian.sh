#!/usr/bin/env bash
cd "$HOME/dotfiles"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"
cargo install sccache
export RUSTC_WRAPPER=sccache cargo install {package}
rustup +stable component add rust-analyzer-preview
cargo install irust
cargo install bacon
cargo install cargo-info
stow rust
