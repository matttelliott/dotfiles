#!/usr/bin/env bash
cd "$HOME/dotfiles"
cargo install rtx-cli
stow rtx-cli
eval "$(rtx activate bash)"
