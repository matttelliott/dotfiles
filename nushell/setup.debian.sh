#!/usr/bin/env bash
cat nushell/README.md
cd "$HOME/dotfiles"
cargo install --git https://github.com/nushell/nushell nu
stow nushell
sudo which nu > /etc/shells
