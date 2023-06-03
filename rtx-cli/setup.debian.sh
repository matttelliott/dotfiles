#!/usr/bin/env bash
cat rtx-cli/README.md
cd "$HOME/dotfiles"
cargo install rtx-cli
echo 'eval "$(~/bin/rtx activate bash)"' >> ~/.bashrc
stow rtx-cli
