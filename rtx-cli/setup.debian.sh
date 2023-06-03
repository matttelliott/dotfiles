#!/usr/bin/env bash
cd "$HOME/dotfiles"
cargo install rtx-cli
stow rtx-cli
cat rtx-cli/README.md
