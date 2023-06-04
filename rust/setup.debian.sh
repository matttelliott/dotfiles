#!/usr/bin/env bash
cd "$HOME/dotfiles"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source "$HOME/.cargo/env"
# cargo install sccache
# export RUSTC_WRAPPER=sccache cargo install {package}
rustup +stable component add rust-analyzer-preview
cargo install coreutils
# cargo install cargo-binstall
# cargo install irust -y
# cargo install bacon -y
# cargo install cargo-info -y
stow rust
