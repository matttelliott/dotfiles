#!/usr/bin/env bash
cd "$HOME/dotfiles"
cargo install zoxide
stow --no-folding zoxide
