#!/usr/bin/env bash
cd "$HOME/dotfiles"
cargo install rtx-cli
stow --no-folding rtx-cli
eval "$(rtx activate bash)"
