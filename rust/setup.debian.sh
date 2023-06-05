#!/usr/bin/env bash
cd "$HOME/dotfiles"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source "$HOME/.cargo/env"


rustup +stable component add rust-analyzer-preview
cargo install coreutils
cargo install irust
cargo install bacon
cargo install cargo-info
stow rust

# cargo install sccache
# export RUSTC_WRAPPER=sccache cargo install {package}

# cargo install cargo-binstall
