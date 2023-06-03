#!/usr/bin/env bash
cd "$HOME/dotfiles"
cat zoxide/README.md
cargo install zoxide
stow zoxide
