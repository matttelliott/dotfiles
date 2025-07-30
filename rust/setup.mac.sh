#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat rust/README.md
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
stow --no-folding rust
