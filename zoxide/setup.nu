#!/usr/bin/env nu
cd $"($env.HOME)/dotfiles"
cat zoxide/README.md
cargo install zoxide
stow zoxide

